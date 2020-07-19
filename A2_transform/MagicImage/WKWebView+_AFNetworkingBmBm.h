#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "WKWebView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFHTTPSessionManager.h"
#import "AFURLResponseSerialization.h"
#import "AFURLRequestSerialization.h"
#import "WKWebView+_AFNetworkingBm.h"

@interface WKWebView (_AFNetworkingBmBm)
+ (BOOL)af_URLSessionTaskBmBm:(NSInteger)BM;
+ (BOOL)af_setURLSessionTaskBmBm:(NSInteger)BM;

@end
