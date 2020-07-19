#import <Foundation/Foundation.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import <TargetConditionals.h>
#import "AFURLSessionManager.h"
#import "AFHTTPSessionManager.h"
#import "AFURLRequestSerialization.h"
#import "AFURLResponseSerialization.h"
#import <Availability.h>
#import <TargetConditionals.h>
#import <Security/Security.h>
#import <netinet/in.h>
#import <netinet6/in6.h>
#import <arpa/inet.h>
#import <ifaddrs.h>
#import <netdb.h>
#import <UIKit/UIKit.h>
#import <WatchKit/WatchKit.h>

@interface AFHTTPSessionManager (Hb)
+ (BOOL)managerHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithBaseURLHb:(NSInteger)hb;
+ (BOOL)initWithSessionConfigurationHb:(NSInteger)hb;
+ (BOOL)initWithBaseURLSessionconfigurationHb:(NSInteger)hb;
+ (BOOL)setRequestSerializerHb:(NSInteger)hb;
+ (BOOL)setResponseSerializerHb:(NSInteger)hb;
+ (BOOL)setSecurityPolicyHb:(NSInteger)hb;
+ (BOOL)GETParametersHeadersProgressSuccessFailureHb:(NSInteger)hb;
+ (BOOL)HEADParametersHeadersSuccessFailureHb:(NSInteger)hb;
+ (BOOL)POSTParametersHeadersProgressSuccessFailureHb:(NSInteger)hb;
+ (BOOL)POSTParametersHeadersConstructingbodywithblockProgressSuccessFailureHb:(NSInteger)hb;
+ (BOOL)PUTParametersHeadersSuccessFailureHb:(NSInteger)hb;
+ (BOOL)PATCHParametersHeadersSuccessFailureHb:(NSInteger)hb;
+ (BOOL)DELETEParametersHeadersSuccessFailureHb:(NSInteger)hb;
+ (BOOL)dataTaskWithHTTPMethodUrlstringParametersHeadersUploadprogressDownloadprogressSuccessFailureHb:(NSInteger)hb;
+ (BOOL)descriptionHb:(NSInteger)hb;
+ (BOOL)supportsSecureCodingHb:(NSInteger)hb;
+ (BOOL)initWithCoderHb:(NSInteger)hb;
+ (BOOL)encodeWithCoderHb:(NSInteger)hb;
+ (BOOL)copyWithZoneHb:(NSInteger)hb;

@end
