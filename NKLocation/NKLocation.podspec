
Pod::Spec.new do |s|

  s.name         = "NKLocation"
  s.version      = "1.0.0"
  s.summary      = "Simply get current location"
  s.description  = "This is Super Simple to get current location1"
  s.homepage     = "https://github.com/nanda477/NKLocation"
  s.license      = "MIT"
  s.author       = { "Nanda" => "nandakishore767@gmail.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/nanda477/NKLocation.git", :tag => "1.0.0" }
  s.source_files  = "NKLocation/**/*"
  s.exclude_files = "NKLocation/**/*.plist"
  s.swift_version = '4.2'
  s.ios.deployment_target  = '11.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

end
