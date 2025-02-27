require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'react-native-amap-geolocation'
  s.version      = '0.0.0'
  s.summary      = package['description']
  s.authors      = 'i@7c00.cc'
  s.license      = { :type => package['license']}
  s.platform     = :ios, "8.0"
  s.source       = { :git => 'https://github.com/qiuxiang/react-native-amap-geolocation' }
  s.source_files = 'lib/ios/**/*.{h,m}'

  s.dependency 'React'
  s.dependency 'AMapLocation', "~> 2.9.0"
end
