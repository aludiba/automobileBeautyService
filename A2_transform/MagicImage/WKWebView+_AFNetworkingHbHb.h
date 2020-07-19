#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "WKWebView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFHTTPSessionManager.h"
#import "AFURLResponseSerialization.h"
#import "AFURLRequestSerialization.h"
#import "WKWebView+_AFNetworkingHb.h"

@interface WKWebView (_AFNetworkingHbHb)
+ (BOOL)af_URLSessionTaskHbHb:(NSInteger)hb;
+ (BOOL)af_setURLSessionTaskHbHb:(NSInteger)hb;

@end
