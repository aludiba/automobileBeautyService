#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "WKWebView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFHTTPSessionManager.h"
#import "AFURLResponseSerialization.h"
#import "AFURLRequestSerialization.h"

@interface WKWebView (AFNetworkingHb)
+ (BOOL)sessionManagerHb:(NSInteger)hb;
+ (BOOL)setSessionManagerHb:(NSInteger)hb;
+ (BOOL)responseSerializerHb:(NSInteger)hb;
+ (BOOL)setResponseSerializerHb:(NSInteger)hb;
+ (BOOL)loadRequestNavigationProgressSuccessFailureHb:(NSInteger)hb;
+ (BOOL)loadRequestNavigationMimetypeTextencodingnameProgressSuccessFailureHb:(NSInteger)hb;

@end
