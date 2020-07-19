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

@interface WKWebView (AFNetworkingBmHb)
+ (BOOL)sessionManagerBmHb:(NSInteger)hb;
+ (BOOL)setSessionManagerBmHb:(NSInteger)hb;
+ (BOOL)responseSerializerBmHb:(NSInteger)hb;
+ (BOOL)setResponseSerializerBmHb:(NSInteger)hb;
+ (BOOL)loadRequestNavigationProgressSuccessFailureBmHb:(NSInteger)hb;
+ (BOOL)loadRequestNavigationMimetypeTextencodingnameProgressSuccessFailureBmHb:(NSInteger)hb;

@end
