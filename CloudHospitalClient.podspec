Pod::Spec.new do |s|
  s.name = 'CloudHospitalClient'
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'
  s.tvos.deployment_target = '10.0'
  s.watchos.deployment_target = '3.0'
  s.version = '2.0.9'
  s.source = { :git => 'https://github.com/icloudhospital/ch-api-client-swift.git', :tag => s.version.to_s }
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'CloudHospitalClient Swift SDK'
  s.source_files = 'CloudHospitalClient/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
  s.dependency 'Alamofire', '~> 5.4.3'
end
