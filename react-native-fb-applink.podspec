require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-fb-applink"
  s.summary      = "React-native native module for fetching deferred deep link from FB"
  s.version      = package["version"]
  s.homepage     = "https://github.com/roborox/react-native-fb-applink"
  s.license      = "MIT"
  s.authors      = { "Roborox" => "https://roborox.org" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/roborox/react-native-fb-applink.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
end

