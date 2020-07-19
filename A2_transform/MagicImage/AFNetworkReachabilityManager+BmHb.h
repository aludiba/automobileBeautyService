#import <Foundation/Foundation.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import "AFNetworkReachabilityManager.h"
#import <netinet/in.h>
#import <netinet6/in6.h>
#import <arpa/inet.h>
#import <ifaddrs.h>
#import <netdb.h>
#import "AFNetworkReachabilityManager+Bm.h"

@interface AFNetworkReachabilityManager (BmHb)
+ (BOOL)sharedManagerBmHb:(NSInteger)hb;
+ (BOOL)managerForDomainBmHb:(NSInteger)hb;
+ (BOOL)managerForAddressBmHb:(NSInteger)hb;
+ (BOOL)managerBmHb:(NSInteger)hb;
+ (BOOL)initWithReachabilityBmHb:(NSInteger)hb;
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)deallocBmHb:(NSInteger)hb;
+ (BOOL)isReachableBmHb:(NSInteger)hb;
+ (BOOL)isReachableViaWWANBmHb:(NSInteger)hb;
+ (BOOL)isReachableViaWiFiBmHb:(NSInteger)hb;
+ (BOOL)startMonitoringBmHb:(NSInteger)hb;
+ (BOOL)stopMonitoringBmHb:(NSInteger)hb;
+ (BOOL)localizedNetworkReachabilityStatusStringBmHb:(NSInteger)hb;
+ (BOOL)setReachabilityStatusChangeBlockBmHb:(NSInteger)hb;
+ (BOOL)keyPathsForValuesAffectingValueForKeyBmHb:(NSInteger)hb;

@end
