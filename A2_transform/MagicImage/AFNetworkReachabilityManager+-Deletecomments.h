#import <Foundation/Foundation.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import "AFNetworkReachabilityManager.h"
#import <netinet/in.h>
#import <netinet6/in6.h>
#import <arpa/inet.h>
#import <ifaddrs.h>
#import <netdb.h>

@interface AFNetworkReachabilityManager (-Deletecomments)
+ (BOOL)sharedManager-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)managerForDomain-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)managerForAddress-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)manager-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithReachability-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)dealloc-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)isReachable-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)isReachableViaWWAN-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)isReachableViaWiFi-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)startMonitoring-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)stopMonitoring-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)localizedNetworkReachabilityStatusString-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setReachabilityStatusChangeBlock-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)keyPathsForValuesAffectingValueForKey-Deletecomments:(NSInteger)-deleteComments;

@end
