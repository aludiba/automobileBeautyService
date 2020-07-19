#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "WKWebView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFHTTPSessionManager.h"
#import "AFURLResponseSerialization.h"
#import "AFURLRequestSerialization.h"
#import "WKWebView+AFNetworkingBm.h"

@interface WKWebView (AFNetworkingBmBm)
+ (BOOL)sessionManagerBmBm:(NSInteger)BM;
+ (BOOL)setSessionManagerBmBm:(NSInteger)BM;
+ (BOOL)responseSerializerBmBm:(NSInteger)BM;
+ (BOOL)setResponseSerializerBmBm:(NSInteger)BM;
+ (BOOL)loadRequestNavigationProgressSuccessFailureBmBm:(NSInteger)BM;
+ (BOOL)loadRequestNavigationMimetypeTextencodingnameProgressSuccessFailureBmBm:(NSInteger)BM;

@end
