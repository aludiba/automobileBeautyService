#import <Foundation/Foundation.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import "AFNetworkReachabilityManager.h"
#import <netinet/in.h>
#import <netinet6/in6.h>
#import <arpa/inet.h>
#import <ifaddrs.h>
#import <netdb.h>
#import "AFNetworkReachabilityManager+Bm.h"
#import "AFNetworkReachabilityManager+BmHb.h"

@interface AFNetworkReachabilityManager (BmHbHb)
+ (BOOL)sharedManagerBmHbHb:(NSInteger)hb;
+ (BOOL)managerForDomainBmHbHb:(NSInteger)hb;
+ (BOOL)managerForAddressBmHbHb:(NSInteger)hb;
+ (BOOL)managerBmHbHb:(NSInteger)hb;
+ (BOOL)initWithReachabilityBmHbHb:(NSInteger)hb;
+ (BOOL)initBmHbHb:(NSInteger)hb;
+ (BOOL)deallocBmHbHb:(NSInteger)hb;
+ (BOOL)isReachableBmHbHb:(NSInteger)hb;
+ (BOOL)isReachableViaWWANBmHbHb:(NSInteger)hb;
+ (BOOL)isReachableViaWiFiBmHbHb:(NSInteger)hb;
+ (BOOL)startMonitoringBmHbHb:(NSInteger)hb;
+ (BOOL)stopMonitoringBmHbHb:(NSInteger)hb;
+ (BOOL)localizedNetworkReachabilityStatusStringBmHbHb:(NSInteger)hb;
+ (BOOL)setReachabilityStatusChangeBlockBmHbHb:(NSInteger)hb;
+ (BOOL)keyPathsForValuesAffectingValueForKeyBmHbHb:(NSInteger)hb;

@end
