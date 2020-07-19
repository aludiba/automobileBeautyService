#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "WKWebView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFHTTPSessionManager.h"
#import "AFURLResponseSerialization.h"
#import "AFURLRequestSerialization.h"

@interface WKWebView (_AFNetworkingBm)
+ (BOOL)af_URLSessionTaskBm:(NSInteger)BM;
+ (BOOL)af_setURLSessionTaskBm:(NSInteger)BM;

@end
