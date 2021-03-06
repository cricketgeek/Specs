Pod::Spec.new do |s|
  s.name         = "BRNetworking"
  s.version      = "0.1"
  s.summary      = "A private shared networking library for Bottle Rocket projects."
  s.homepage     = "https://cricketgeek@bitbucket.org/BottleRocket/brnetworking2.git"
  s.description  = <<-EOS
	BRNetworking will handle authentication for you using BRHTTPBasicNetworkingAuthentication or BRServerTrustNetworkingAuthentication or if need be you can combine multiple authentication methods using BRNetworkingAuthenticationGroup and then setting the httpAuthentication property on your BRNetworkRequest instance. BRNetworking will also cache url requests. You can turn on logging by enabling the logger directly [BRNLogger setEnabled:YES]; or through the Network manager, [networkManager setLogginEnabled:YES]; you can then turn it off in the same manner passing NO reducing the noise in the console. After enabling logging, use the macro BRNLog to write a log statement.

EOS
  s.license      = 'MIT'
  s.author       = { "Mark Jones" => "mark.jones@bottlerocketapps.com" }
  s.source       = { :git => "https://cricketgeek@bitbucket.org/BottleRocket/brnetworking2.git", :tag => "0.1" }
  s.platform     = :ios, '5.0'
  s.requires_arc = true
  s.ios.deployment_target = '5.0'
  s.frameworks = 'MessageUI','MobileCoreServices', 'SystemConfiguration', 'ImageIO', "CoreBluetooth"
  s.source_files = 'BRNetworking/BRNetworking/*.h','BRNetworking/BRNetworking/BRCache/*.{h,m}','BRNetworking/BRNetworking/Singleton/*.{h,m}','BRNetworking/BRNetworking/ThirdParty/Apple/*.{h,m}','BRNetworking/BRNetworking/BRNetworking/*.{h,m}','BRNetworking/BRNetworking/BRNetworking/Apple/*.{h,m}','BRNetworking/BRNetworking/BRNetworking/Authentication/*.{h,m}','BRNetworking/BRNetworking/BRNetworking/Callbacks/*.{h,m}'
  s.prefix_header_contents = <<-EOS
#ifdef __OBJC__
	#import <Foundation/Foundation.h>
	#import <SystemConfiguration/SystemConfiguration.h>
	#import <MobileCoreServices/MobileCoreServices.h>
	#import "BRDebugLog.h"
	#import "BRNLogger.h"
#endif
EOS
end
