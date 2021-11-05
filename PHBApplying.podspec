Pod::Spec.new do |s|
  s.name             = 'PHBApplying'
  s.version          = '0.2.0'
  s.summary          = 'Apply changes to objects in-line.'
  s.description      = <<-DESC
  'Map-like syntactic sugar for single objects. Adds an `apply` and `applying` method to NSObject-subclasses to allow inline setup objects.'
                       DESC
  s.homepage         = 'https://github.com/phlippieb/PHBApplying'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'phlippieb' => 'phlippie.bosman@gmail.com' }
  s.source           = { :git => 'https://github.com/phlippieb/PHBApplying.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.swift_version = '5.0'
  s.source_files = 'Sources/PHBApplying/**/*.swift'
end
