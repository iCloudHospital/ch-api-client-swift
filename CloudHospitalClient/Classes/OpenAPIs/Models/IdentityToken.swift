import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IdentityToken: Codable, JSONEncodable, Hashable {
    var access_token: String
    var expires_in: Int
    var expires_at: Date?
    var refresh_token: String
    var scope: String
    var token_type: String

    public init(access_token: String, expires_in: Int, expires_at: Date? = nil, refresh_token: String, scope: String, token_type: String) {
        self.access_token = access_token
        self.expires_in = expires_in
        self.expires_at = Date()
        
        self.refresh_token = refresh_token
        self.scope = scope
        self.token_type = token_type

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"
        self.expires_at = Date().addingTimeInterval(TimeInterval(expires_in))
    }


    public enum CodingKeys: String, CodingKey, CaseIterable {
        case access_token
        case expires_in
        case expires_at
        case refresh_token
        case scope
        case token_type
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(access_token, forKey: .access_token)
        try container.encodeIfPresent(expires_in, forKey: .expires_in)
        try container.encodeIfPresent(expires_at, forKey: .expires_at)
        try container.encodeIfPresent(refresh_token, forKey: .refresh_token)
        try container.encodeIfPresent(scope, forKey: .cscopeode)
        try container.encodeIfPresent(token_type, forKey: .token_type)
    }
}