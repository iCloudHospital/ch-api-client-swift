Pod::Spec.new do |s|
  s.name = 'CloudHospitalClient'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.3.5'
  s.source = { :git => 'https://github.com/icloudhospital/ch-api-client-swift.git', :tag => s.version.to_s }
  s.authors = 'CloudHospital'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/icloudhospital/ch-api-client-swift'
  s.summary = 'CloudHospitalClient Swift SDK'
  s.source_files = 'CloudHospitalClient/Classes/**/*.swift'
  s.dependency 'Alamofire', '~> 4.9.1'
end
