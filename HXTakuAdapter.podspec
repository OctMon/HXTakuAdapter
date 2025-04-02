
Pod::Spec.new do |spec|

  spec.name         = "HXTakuAdapter"
  spec.version      = "0.0.1"
  spec.summary      = "HXSDK 适配器, 用于在TopOn聚合SDK请求广告"

  spec.description  = <<-DESC
  支持开屏类型广告请求。
                   DESC
                   
  spec.homepage     = "https://github.com/OctMon/HXTakuAdapter.git"

  spec.license      = { :type => 'MIT', :file => 'LICENSE' }

  spec.author             = { "OctMon" => "octmon@qq.com" }

  spec.source       = { :git => "https://github.com/OctMon/HXTakuAdapter.git", :tag => "#{spec.version}" }
  #spec.source       = { :git => "https://github.com/CocoaPods/Specs.git", :tag => "#{spec.version}" }

  spec.ios.deployment_target = '9.0'

  spec.static_framework = true

  # spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  # spec.exclude_files = "Classes/Exclude"
  # spec.public_header_files = "Classes/**/*.h"
  
  # 指定源文件
  spec.source_files = "Adapter/*.{h,m}"

  spec.libraries  = 'z', 'c++', 'c'
  #spec.frameworks = 'AdSupport', 'AVFoundation', 'Accelerate'
  #spec.weak_frameworks = 'AppTrackingTransparency'
  
  
  # spec.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1' }
  
  spec.requires_arc = true
  # spec.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  # spec.pod_target_xcconfig = { 'SWIFT_OBJC_INTERFACE_HEADER_NAME' => "$(SWIFT_MODULE_NAME).h", 'ENABLE_BITCODE' => 'NO', 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  spec.dependency "AnyThinkiOS", "~>6.3.75"
  spec.dependency "HXSDK", "~>0.0.1"
  
  # spec.xcconfig = {"OTHER_LDFLAGS" => "-ObjC"}
    # spec.xcconfig = {"OTHER_LDFLAGS" => "-ObjC"}
      # spec.xcconfig = {"OTHER_LDFLAGS" => "-ObjC"}
        # spec.xcconfig = {"OTHER_LDFLAGS" => "-ObjC"}
  valid_archs = ['arm64' 'armv7' 'x86_64' 'i386']
  spec.xcconfig = {
    'VALID_ARCHS' =>  valid_archs.join(' '),
    "OTHER_LDFLAGS" => "-ObjC"
  }

end
