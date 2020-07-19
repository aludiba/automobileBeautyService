#import <Foundation/Foundation.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import "AFNetworkReachabilityManager.h"
#import <netinet/in.h>
#import <netinet6/in6.h>
#import <arpa/inet.h>
#import <ifaddrs.h>
#import <netdb.h>
#import "AFNetworkReachabilityManager+Bm.h"

@interface AFNetworkReachabilityManager (BmBm)
+ (BOOL)sharedManagerBmBm:(NSInteger)BM;
+ (BOOL)managerForDomainBmBm:(NSInteger)BM;
+ (BOOL)managerForAddressBmBm:(NSInteger)BM;
+ (BOOL)managerBmBm:(NSInteger)BM;
+ (BOOL)initWithReachabilityBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBm:(NSInteger)BM;
+ (BOOL)isReachableBmBm:(NSInteger)BM;
+ (BOOL)isReachableViaWWANBmBm:(NSInteger)BM;
+ (BOOL)isReachableViaWiFiBmBm:(NSInteger)BM;
+ (BOOL)startMonitoringBmBm:(NSInteger)BM;
+ (BOOL)stopMonitoringBmBm:(NSInteger)BM;
+ (BOOL)localizedNetworkReachabilityStatusStringBmBm:(NSInteger)BM;
+ (BOOL)setReachabilityStatusChangeBlockBmBm:(NSInteger)BM;
+ (BOOL)keyPathsForValuesAffectingValueForKeyBmBm:(NSInteger)BM;

@end
