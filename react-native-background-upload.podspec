require "json"

 json = File.read(File.join(__dir__, "package.json"))
 package = JSON.parse(json).deep_symbolize_keys

 Pod::Spec.new do |s|
   s.name = "react-native-background-upload"
   s.version = "6.6.0"
   s.license = { type: "MIT" }
   s.homepage = "https://github.com/tecxar/react-native-background-upload"
   s.authors = package[:author]
   s.summary = package[:description]
   s.source = { :git => "https://github.com/tecxar/react-native-background-upload"}
   s.source_files = "ios/*.{h,m}"
   s.platform = :ios, "9.0"

   s.dependency "React"
 end
