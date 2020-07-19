#import <Foundation/Foundation.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import "AFNetworkReachabilityManager.h"
#import <netinet/in.h>
#import <netinet6/in6.h>
#import <arpa/inet.h>
#import <ifaddrs.h>
#import <netdb.h>

@interface AFNetworkReachabilityManager (Bm)
+ (BOOL)sharedManagerBm:(NSInteger)BM;
+ (BOOL)managerForDomainBm:(NSInteger)BM;
+ (BOOL)managerForAddressBm:(NSInteger)BM;
+ (BOOL)managerBm:(NSInteger)BM;
+ (BOOL)initWithReachabilityBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)isReachableBm:(NSInteger)BM;
+ (BOOL)isReachableViaWWANBm:(NSInteger)BM;
+ (BOOL)isReachableViaWiFiBm:(NSInteger)BM;
+ (BOOL)startMonitoringBm:(NSInteger)BM;
+ (BOOL)stopMonitoringBm:(NSInteger)BM;
+ (BOOL)localizedNetworkReachabilityStatusStringBm:(NSInteger)BM;
+ (BOOL)setReachabilityStatusChangeBlockBm:(NSInteger)BM;
+ (BOOL)keyPathsForValuesAffectingValueForKeyBm:(NSInteger)BM;

@end
