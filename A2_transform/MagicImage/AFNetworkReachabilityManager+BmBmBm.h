#import <Foundation/Foundation.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import "AFNetworkReachabilityManager.h"
#import <netinet/in.h>
#import <netinet6/in6.h>
#import <arpa/inet.h>
#import <ifaddrs.h>
#import <netdb.h>
#import "AFNetworkReachabilityManager+Bm.h"
#import "AFNetworkReachabilityManager+BmBm.h"

@interface AFNetworkReachabilityManager (BmBmBm)
+ (BOOL)sharedManagerBmBmBm:(NSInteger)BM;
+ (BOOL)managerForDomainBmBmBm:(NSInteger)BM;
+ (BOOL)managerForAddressBmBmBm:(NSInteger)BM;
+ (BOOL)managerBmBmBm:(NSInteger)BM;
+ (BOOL)initWithReachabilityBmBmBm:(NSInteger)BM;
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBmBm:(NSInteger)BM;
+ (BOOL)isReachableBmBmBm:(NSInteger)BM;
+ (BOOL)isReachableViaWWANBmBmBm:(NSInteger)BM;
+ (BOOL)isReachableViaWiFiBmBmBm:(NSInteger)BM;
+ (BOOL)startMonitoringBmBmBm:(NSInteger)BM;
+ (BOOL)stopMonitoringBmBmBm:(NSInteger)BM;
+ (BOOL)localizedNetworkReachabilityStatusStringBmBmBm:(NSInteger)BM;
+ (BOOL)setReachabilityStatusChangeBlockBmBmBm:(NSInteger)BM;
+ (BOOL)keyPathsForValuesAffectingValueForKeyBmBmBm:(NSInteger)BM;

@end
