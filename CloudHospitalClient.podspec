Pod::Spec.new do |s|
  s.name = 'CloudHospitalClient'
  s.ios.deployment_target = '9.0'
  s.version = '1.2'
s.source = { :git => 'https://github.com/iCloudHospital/ch-api-client-swift.git', :tag => s.version.to_s }
  s.authors = 'Hyounwoo Sung'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage = 'https://github.com/iCloudHospital/ch-api-client-swift'
  s.summary = 'CloudHospitalClient Swift SDK'
  s.source_files = 'CloudHospitalClient/Classes/**/*.swift'
end
