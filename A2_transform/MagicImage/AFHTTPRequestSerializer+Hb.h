#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import <WatchKit/WatchKit.h>
#import "AFURLRequestSerialization.h"
#import <MobileCoreServices/MobileCoreServices.h>
#import <CoreServices/CoreServices.h>

@interface AFHTTPRequestSerializer (Hb)
+ (BOOL)serializerHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)setAllowsCellularAccessHb:(NSInteger)hb;
+ (BOOL)setCachePolicyHb:(NSInteger)hb;
+ (BOOL)setHTTPShouldHandleCookiesHb:(NSInteger)hb;
+ (BOOL)setHTTPShouldUsePipeliningHb:(NSInteger)hb;
+ (BOOL)setNetworkServiceTypeHb:(NSInteger)hb;
+ (BOOL)setTimeoutIntervalHb:(NSInteger)hb;
+ (BOOL)HTTPRequestHeadersHb:(NSInteger)hb;
+ (BOOL)setValueForhttpheaderfieldHb:(NSInteger)hb;
+ (BOOL)valueForHTTPHeaderFieldHb:(NSInteger)hb;
+ (BOOL)setAuthorizationHeaderFieldWithUsernamePasswordHb:(NSInteger)hb;
+ (BOOL)clearAuthorizationHeaderHb:(NSInteger)hb;
+ (BOOL)setQueryStringSerializationWithStyleHb:(NSInteger)hb;
+ (BOOL)setQueryStringSerializationWithBlockHb:(NSInteger)hb;
+ (BOOL)requestWithMethodUrlstringParametersErrorHb:(NSInteger)hb;
+ (BOOL)multipartFormRequestWithMethodUrlstringParametersConstructingbodywithblockErrorHb:(NSInteger)hb;
+ (BOOL)requestWithMultipartFormRequestWritingstreamcontentstofileCompletionhandlerHb:(NSInteger)hb;
+ (BOOL)requestBySerializingRequestWithparametersErrorHb:(NSInteger)hb;
+ (BOOL)automaticallyNotifiesObserversForKeyHb:(NSInteger)hb;
+ (BOOL)observeValueForKeyPathOfobjectChangeContextHb:(NSInteger)hb;
+ (BOOL)supportsSecureCodingHb:(NSInteger)hb;
+ (BOOL)initWithCoderHb:(NSInteger)hb;
+ (BOOL)encodeWithCoderHb:(NSInteger)hb;
+ (BOOL)copyWithZoneHb:(NSInteger)hb;

@end
