#
# Be sure to run `pod lib lint Firebase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Firebase'
  s.version          = '6.30.20'
  s.summary          = 'A short description of Firebase.'
  s.homepage         = 'http://gitlab.lizhi.fm/iOSPods/Firebase'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wenshiming' => 'wenshiming@lizhi.fm' }
  s.source           = { :git => 'http://gitlab.lizhi.fm/iOSPods/Firebase.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  #s.source_files = ['Classes/*.{h,m}', 'Classes/**/*.{h,m}', 'Classes/**/**/*.{h,m}']
  
  s.subspec 'Fabric' do |sp|
    sp.vendored_frameworks = 'Fabric/iOS/*.framework'
  end
  
  s.subspec 'Crashlytics' do |sp|

    sp.preserve_paths = [
       'Crashlytics/submit',
       'Crashlytics/Crashlytics.framework/*'
      ]
    sp.vendored_frameworks = 'Crashlytics/iOS/*.framework'
    sp.frameworks = 'Security','SystemConfiguration'
    sp.source_files = 'Crashlytics/iOS/Crashlytics.framework/Headers/*.h'
    sp.public_header_files = 'Crashlytics/iOS/Crashlytics.framework/Headers/*.h'
    
    
  end
  
  #s.subspec 'Core' do |sp|
    #sp.source_files = 'Core/*.{h,m}'
    #sp.subspec 'Analytics' do |sp|
     # sp.vendored_frameworks = 'Core/Analytics/*.framework'
   # end
  #end
  
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  #s.dependency 'GPBProtobuf'
  
end
