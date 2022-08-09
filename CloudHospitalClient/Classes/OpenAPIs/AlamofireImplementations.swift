// AlamofireImplementations.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire

class AlamofireRequestBuilderFactory: RequestBuilderFactory {
    func getNonDecodableBuilder<T>() -> RequestBuilder<T>.Type {
        return AlamofireRequestBuilder<T>.self
    }

    func getBuilder<T: Decodable>() -> RequestBuilder<T>.Type {
        return AlamofireDecodableRequestBuilder<T>.self
    }
}

// Store manager to retain its reference
private var managerStore = SynchronizedDictionary<String, Alamofire.Session>()

open class AlamofireRequestBuilder<T>: RequestBuilder<T> {
    required public init(method: String, URLString: String, parameters: [String: Any]?, headers: [String: String] = [:]) {
        super.init(method: method, URLString: URLString, parameters: parameters, headers: headers)
    }

    /**
     May be overridden by a subclass if you want to control the session
     configuration.
     */
    open func createAlamofireSession(interceptor: RequestInterceptor? = nil) -> Alamofire.Session {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = buildHeaders()
        return Alamofire.Session(configuration: configuration,
                                 interceptor: interceptor)
    }

    /**
     May be overridden by a subclass if you want to custom request constructor.
     */
    open func createURLRequest() -> URLRequest? {
        let xMethod = Alamofire.HTTPMethod(rawValue: method)

        let encoding: ParameterEncoding

        switch xMethod {
        case .get, .head:
            encoding = URLEncoding()

        case .options, .post, .put, .patch, .delete, .trace, .connect:
            encoding = JSONDataEncoding()

        default:
            fatalError("Unsupported HTTPMethod - \(xMethod.rawValue)")
        }

        guard let originalRequest = try? URLRequest(url: URLString, method: xMethod, headers: HTTPHeaders(buildHeaders())) else { return nil }
        return try? encoding.encode(originalRequest, with: parameters)
    }

    /**
     May be overridden by a subclass if you want to control the Content-Type
     that is given to an uploaded form part.

     Return nil to use the default behavior (inferring the Content-Type from
     the file extension).  Return the desired Content-Type otherwise.
     */
    open func contentTypeForFormPart(fileURL: URL) -> String? {
        return nil
    }

    /**
     May be overridden by a subclass if you want to control the request
     configuration (e.g. to override the cache policy).
     */
    open func makeRequest(manager: Session, method: HTTPMethod, encoding: ParameterEncoding, headers: [String: String]) -> DataRequest {
        return manager.request(URLString, method: method, parameters: parameters, encoding: encoding, headers: HTTPHeaders(headers))
    }

    @discardableResult
    override open func execute(_ apiResponseQueue: DispatchQueue = CloudHospitalClientAPI.apiResponseQueue, _ completion: @escaping (_ result: Swift.Result<Response<T>, ErrorResponse>) -> Void) -> RequestTask {
        let managerId = UUID().uuidString
        // Create a new manager for each request to customize its request header
        let manager = createAlamofireSession()
        managerStore[managerId] = manager

        let xMethod = Alamofire.HTTPMethod(rawValue: method)

        let encoding: ParameterEncoding?

        switch xMethod {
        case .get, .head:
            encoding = URLEncoding()

        case .options, .post, .put, .patch, .delete, .trace, .connect:
            let contentType = headers["Content-Type"] ?? "application/json"

            if contentType == "application/json" {
                encoding = JSONDataEncoding()
            } else if contentType == "multipart/form-data" {
                encoding = nil

                let upload = manager.upload(multipartFormData: { mpForm in
                    for (k, v) in self.parameters! {
                        switch v {
                        case let fileURL as URL:
                            if let mimeType = self.contentTypeForFormPart(fileURL: fileURL) {
                                mpForm.append(fileURL, withName: k, fileName: fileURL.lastPathComponent, mimeType: mimeType)
                            } else {
                                mpForm.append(fileURL, withName: k)
                            }
                        case let string as String:
                            mpForm.append(string.data(using: String.Encoding.utf8)!, withName: k)
                        case let number as NSNumber:
                            mpForm.append(number.stringValue.data(using: String.Encoding.utf8)!, withName: k)
                        case let data as Data:
                            mpForm.append(data, withName: k)
                        default:
                            fatalError("Unprocessable value \(v) with key \(k)")
                        }
                    }
                }, to: URLString, method: xMethod, headers: nil)
                .uploadProgress { progress in
                    if let onProgressReady = self.onProgressReady {
                        onProgressReady(progress)
                    }
                }

                requestTask.set(request: upload)

                self.processRequest(request: upload, managerId, apiResponseQueue, completion)
            } else if contentType == "application/x-www-form-urlencoded" {
                encoding = URLEncoding(destination: .httpBody)
            } else {
                fatalError("Unsupported Media Type - \(contentType)")
            }

        default:
            fatalError("Unsupported HTTPMethod - \(xMethod.rawValue)")
        }

        if let encoding = encoding {
            let request = makeRequest(manager: manager, method: xMethod, encoding: encoding, headers: headers)
            if let onProgressReady = self.onProgressReady {
                onProgressReady(request.uploadProgress)
            }
            processRequest(request: request, managerId, apiResponseQueue, completion)
            requestTask.set(request: request)
        }

        return requestTask
    }

    fileprivate func processRequest(request: DataRequest, _ managerId: String, _ apiResponseQueue: DispatchQueue, _ completion: @escaping (_ result: Swift.Result<Response<T>, ErrorResponse>) -> Void) {
        if let credential = self.credential {
            request.authenticate(with: credential)
        }

        let cleanupRequest = {
            managerStore[managerId] = nil
        }

        let validatedRequest = request.validate()

        switch T.self {
        case is Void.Type:
            validatedRequest.responseData(queue: apiResponseQueue, completionHandler: { voidResponse in
                cleanupRequest()

                switch voidResponse.result {
                case .success:
                    completion(.success(Response(response: voidResponse.response!, body: () as! T)))
                case let .failure(error):
                    completion(.failure(ErrorResponse.error(voidResponse.response?.statusCode ?? 500, voidResponse.data, voidResponse.response, error)))
                }

            })
        default:
            fatalError("Unsupported Response Body Type - \(String(describing: T.self))")
        }
    }

    open func buildHeaders() -> [String: String] {
        var httpHeaders = Alamofire.HTTPHeaders.default.dictionary
        for (key, value) in headers {
            httpHeaders[key] = value
        }
        return httpHeaders
    }

    fileprivate func getFileName(fromContentDisposition contentDisposition: String?) -> String? {

        guard let contentDisposition = contentDisposition else {
            return nil
        }

        let items = contentDisposition.components(separatedBy: ";")

        var filename: String?

        for contentItem in items {

            let filenameKey = "filename="
            guard let range = contentItem.range(of: filenameKey) else {
                continue
            }

            filename = contentItem
            return filename?
                .replacingCharacters(in: range, with: "")
                .replacingOccurrences(of: "\"", with: "")
                .trimmingCharacters(in: .whitespacesAndNewlines)
        }

        return filename

    }

    fileprivate func getPath(from url: URL) throws -> String {

        guard var path = URLComponents(url: url, resolvingAgainstBaseURL: true)?.path else {
            throw DownloadException.requestMissingPath
        }

        if path.hasPrefix("/") {
            path.remove(at: path.startIndex)
        }

        return path

    }

    fileprivate func getURL(from urlRequest: URLRequest) throws -> URL {

        guard let url = urlRequest.url else {
            throw DownloadException.requestMissingURL
        }

        return url
    }

}

open class AlamofireDecodableRequestBuilder<T: Decodable>: AlamofireRequestBuilder<T> {

    override fileprivate func processRequest(request: DataRequest, _ managerId: String, _ apiResponseQueue: DispatchQueue, _ completion: @escaping (_ result: Swift.Result<Response<T>, ErrorResponse>) -> Void) {
        if let credential = self.credential {
            request.authenticate(with: credential)
        }

        let cleanupRequest = {
            managerStore[managerId] = nil
        }

        let validatedRequest = request.validate()

        switch T.self {
        case is String.Type:
            validatedRequest.responseString(queue: apiResponseQueue, completionHandler: { stringResponse in
                cleanupRequest()

                switch stringResponse.result {
                case let .success(value):
                    completion(.success(Response(response: stringResponse.response!, body: value as! T)))
                case let .failure(error):
                    completion(.failure(ErrorResponse.error(stringResponse.response?.statusCode ?? 500, stringResponse.data, stringResponse.response, error)))
                }

            })
        case is URL.Type:
            validatedRequest.responseData(queue: apiResponseQueue, completionHandler: { dataResponse in
                cleanupRequest()

                do {

                    guard case .success = dataResponse.result else {
                        throw DownloadException.responseFailed
                    }

                    guard let data = dataResponse.data else {
                        throw DownloadException.responseDataMissing
                    }

                    guard let request = request.request else {
                        throw DownloadException.requestMissing
                    }

                    let fileManager = FileManager.default
                    let urlRequest = try request.asURLRequest()
                    let cachesDirectory = fileManager.urls(for: .cachesDirectory, in: .userDomainMask)[0]
                    let requestURL = try self.getURL(from: urlRequest)

                    var requestPath = try self.getPath(from: requestURL)

                    if let headerFileName = self.getFileName(fromContentDisposition: dataResponse.response?.allHeaderFields["Content-Disposition"] as? String) {
                        requestPath = requestPath.appending("/\(headerFileName)")
                    } else {
                        requestPath = requestPath.appending("/tmp.CloudHospitalClient.\(UUID().uuidString)")
                    }

                    let filePath = cachesDirectory.appendingPathComponent(requestPath)
                    let directoryPath = filePath.deletingLastPathComponent().path

                    try fileManager.createDirectory(atPath: directoryPath, withIntermediateDirectories: true, attributes: nil)
                    try data.write(to: filePath, options: .atomic)

                    completion(.success(Response(response: dataResponse.response!, body: filePath as! T)))

                } catch let requestParserError as DownloadException {
                    completion(.failure(ErrorResponse.error(400, dataResponse.data, dataResponse.response, requestParserError)))
                } catch {
                    completion(.failure(ErrorResponse.error(400, dataResponse.data, dataResponse.response, error)))
                }
                return
            })
        case is Void.Type:
            validatedRequest.responseData(queue: apiResponseQueue, completionHandler: { voidResponse in
                cleanupRequest()

                switch voidResponse.result {
                case .success:
                    completion(.success(Response(response: voidResponse.response!, body: () as! T)))
                case let .failure(error):
                    completion(.failure(ErrorResponse.error(voidResponse.response?.statusCode ?? 500, voidResponse.data, voidResponse.response, error)))
                }

            })
        case is Data.Type:
            validatedRequest.responseData(queue: apiResponseQueue, completionHandler: { dataResponse in
                cleanupRequest()

                switch dataResponse.result {
                case .success:
                    completion(.success(Response(response: dataResponse.response!, body: dataResponse.data as! T)))
                case let .failure(error):
                    completion(.failure(ErrorResponse.error(dataResponse.response?.statusCode ?? 500, dataResponse.data, dataResponse.response, error)))
                }

            })
        default:
            validatedRequest.responseData(queue: apiResponseQueue, completionHandler: { dataResponse in
                cleanupRequest()

                if case let .failure(error) = dataResponse.result {
                    completion(.failure(ErrorResponse.error(dataResponse.response?.statusCode ?? 500, dataResponse.data, dataResponse.response, error)))
                    return
                }

                guard let httpResponse = dataResponse.response else {
                    completion(.failure(ErrorResponse.error(-2, nil, dataResponse.response, DecodableRequestBuilderError.nilHTTPResponse)))
                    return
                }

                guard let data = dataResponse.data, !data.isEmpty else {
                    if T.self is ExpressibleByNilLiteral.Type {
                        completion(.success(Response(response: httpResponse, body: Optional<T>.none as! T)))
                    } else {
                        completion(.failure(ErrorResponse.error(httpResponse.statusCode, nil, httpResponse, DecodableRequestBuilderError.emptyDataResponse)))
                    }
                    return
                }

                let decodeResult = CodableHelper.decode(T.self, from: data)

                switch decodeResult {
                case let .success(decodableObj):
                    completion(.success(Response(response: httpResponse, body: decodableObj)))
                case let .failure(error):
                    completion(.failure(ErrorResponse.error(httpResponse.statusCode, data, httpResponse, error)))
                }

            })
        }
    }

}

extension JSONDataEncoding: ParameterEncoding {

    // MARK: Encoding

    /// Creates a URL request by encoding parameters and applying them onto an existing request.
    ///
    /// - parameter urlRequest: The request to have parameters applied.
    /// - parameter parameters: The parameters to apply. This should have a single key/value
    ///                         pair with "jsonData" as the key and a Data object as the value.
    ///
    /// - throws: An `Error` if the encoding process encounters an error.
    ///
    /// - returns: The encoded request.
    public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest {
        let urlRequest = try urlRequest.asURLRequest()

        return encode(urlRequest, with: parameters)
    }
}
