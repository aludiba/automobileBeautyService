#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "WKWebView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFHTTPSessionManager.h"
#import "AFURLResponseSerialization.h"
#import "AFURLRequestSerialization.h"

@interface WKWebView (AFNetworkingBm)
+ (BOOL)sessionManagerBm:(NSInteger)BM;
+ (BOOL)setSessionManagerBm:(NSInteger)BM;
+ (BOOL)responseSerializerBm:(NSInteger)BM;
+ (BOOL)setResponseSerializerBm:(NSInteger)BM;
+ (BOOL)loadRequestNavigationProgressSuccessFailureBm:(NSInteger)BM;
+ (BOOL)loadRequestNavigationMimetypeTextencodingnameProgressSuccessFailureBm:(NSInteger)BM;

@end
