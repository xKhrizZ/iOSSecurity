Pod::Spec.new do |spec|

  spec.name         = "iOSSecurity"
  spec.version      = "0.1.0"
  spec.summary      = "Framework for security"

  spec.homepage     = "https://github.com/xKhrizZ/iOSSecurity"
  spec.license      = "MIT"
  spec.author       = { "Christian R" => "christianapu@hotmail.com" }
  spec.platform     = :ios, "12.0"
  spec.ios.deployment_target = '12.0'
  spec.source       = { :git => "https://github.com/xKhrizZ/iOSSecurity.git", :tag => spec.version.to_s }
  spec.source_files = "iOSSecurity/**/*.{swift}"
  spec.dependency "CryptoSwift", '~> 1.4.3'

end
