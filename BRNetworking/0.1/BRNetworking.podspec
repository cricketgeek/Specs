Pod::Spec.new do |s|
  s.name         = "BRNetworking"
  s.version      = "0.1"
  s.summary      = "A private shared networking library for Bottle Rocket projects."
  s.homepage     = "https://cricketgeek@bitbucket.org/BottleRocket/brnetworking2.git"
  s.license      = 'MIT'
  s.author       = { "Mark Jones" => "mark.jones@bottlerocketapps.com" }
  s.source       = { :git => "https://cricketgeek@bitbucket.org/BottleRocket/brnetworking2.git", :tag => "0.1" }
  s.platform     = :ios, '5.0'
  s.requires_arc = true
  s.ios.deployment_target = '5.0'

  s.source_files = 'BRNetworking/BRNetworking/*.h','BRNetworking/BRNetworking/BRCache/*.{h,m}','BRNetworking/BRNetworking/Singleton/*.{h,m}','BRNetworking/BRNetworking/ThirdParty/Apple/*.{h,m}','BRNetworking/BRNetworking/BRNetworking/*.{h,m}','BRNetworking/BRNetworking/BRNetworking/Apple/*.{h,m}','BRNetworking/BRNetworking/BRNetworking/Authentication/*.{h,m}','BRNetworking/BRNetworking/BRNetworking/Callbacks/*.{h,m}'
  s.frameworks = 'Foundation', 'SystemConfiguration'
  s.prefix_header_contents = <<-EOS
#ifdef __OBJC__
	#import <Foundation/Foundation.h>
	#import "BRDebugLog.h"
	#import "BRNLogger.h"
#endif
EOS
end
