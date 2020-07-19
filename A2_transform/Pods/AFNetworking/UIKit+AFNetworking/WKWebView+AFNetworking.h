#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#if TARGET_OS_IOS
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
NS_ASSUME_NONNULL_BEGIN
@class AFHTTPSessionManager;
@interface WKWebView (AFNetworking)
@property (nonatomic, strong) AFHTTPSessionManager *sessionManager;
- (void)loadRequest:(NSURLRequest *)request
         navigation:(WKNavigation * _Nonnull)navigation
           progress:(NSProgress * _Nullable __autoreleasing * _Nullable)progress
            success:(nullable NSString * (^)(NSHTTPURLResponse *response, NSString *HTML))success
            failure:(nullable void (^)(NSError *error))failure;
- (void)loadRequest:(NSURLRequest *)request
         navigation:(WKNavigation * _Nonnull)navigation
           MIMEType:(nullable NSString *)MIMEType
   textEncodingName:(nullable NSString *)textEncodingName
           progress:(NSProgress * _Nullable __autoreleasing * _Nullable)progress
            success:(nullable NSData * (^)(NSHTTPURLResponse *response, NSData *data))success
            failure:(nullable void (^)(NSError *error))failure;
@end
NS_ASSUME_NONNULL_END
#endif
