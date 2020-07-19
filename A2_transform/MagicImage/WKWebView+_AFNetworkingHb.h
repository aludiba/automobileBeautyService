#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "WKWebView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFHTTPSessionManager.h"
#import "AFURLResponseSerialization.h"
#import "AFURLRequestSerialization.h"

@interface WKWebView (_AFNetworkingHb)
+ (BOOL)af_URLSessionTaskHb:(NSInteger)hb;
+ (BOOL)af_setURLSessionTaskHb:(NSInteger)hb;

@end
