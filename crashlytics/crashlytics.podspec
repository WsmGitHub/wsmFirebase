
Pod::Spec.new do |s|
  s.name             = "crashlytics"
  s.version          = '6.30.20'
  s.summary          = 'A short description of Firebase.'
  s.homepage         = 'http://gitlab.lizhi.fm/iOSPods/Firebase'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wenshiming' => 'wenshiming@lizhi.fm' }
  s.source           = { :git => 'http://gitlab.lizhi.fm/iOSPods/Firebase.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.frameworks = 'Security','SystemConfiguration'
  s.libraries = 'z','c++' 
  s.preserve_paths = "submit","Crashlytics.framework/*"
  s.source_files = 'iOS/Crashlytics.framework/Headers/*.h'
  s.public_header_files = 'iOS/Crashlytics.framework/Headers/*.h'
  s.vendored_frameworks = 'iOS/Crashlytics.framework'
end
