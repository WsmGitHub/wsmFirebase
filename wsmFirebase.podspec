
Pod::Spec.new do |s|
  s.name             = "wsmFirebase"
  s.version          = '1.0.0'
  s.summary          = 'A short description of Firebase.'
  s.homepage         = 'http://gitlab.lizhi.fm/iOSPods/Firebase'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wenshiming' => 'wenshiming@lizhi.fm' }
  s.source           = { :git => 'https://github.com/WsmGitHub/wsmFirebase.git', :tag => s.version.to_s }
   s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
   s.platforms    = { :ios => "8.0", }
  
   s.subspec 'Crashlytics' do |sp|
    sp.frameworks = 'Security','SystemConfiguration'
    sp.libraries = 'z','c++' 
    sp.preserve_paths = "crashlytics/submit","crashlytics/Crashlytics.framework/*"
    sp.source_files = 'crashlytics/iOS/Crashlytics.framework/Headers/*.h'
    sp.public_header_files = 'crashlytics/iOS/Crashlytics.framework/Headers/*.h'
    sp.vendored_frameworks = "crashlytics/iOS/Crashlytics.framework"
    sp.vendored_frameworks = 'crashlytics/iOS/Crashlytics.framework'

  end

  s.subspec 'Fabric' do |sp|
    sp.preserve_paths = "fabric/run","fabric/upload-symbols","fabric/Fabric.framework/*"
    sp.vendored_frameworks = 'fabric/iOS/Fabric.framework'
    sp.requires_arc = true
    sp.source_files = 'fabric/iOS/Fabric.framework/Headers/*.h'
    sp.public_header_files = 'fabric/iOS/Fabric.framework/Headers/*.h'
    sp.vendored_frameworks = 'fabric/iOS/Fabric.framework'
  end

  s.subspec 'Core' do |sp|
    sp.source_files = 'Core/*.{h,m}'
    sp.subspec 'Analytics' do |sp|
      sp.vendored_frameworks = 'Core/Analytics/*.framework'
    end
  end



end
