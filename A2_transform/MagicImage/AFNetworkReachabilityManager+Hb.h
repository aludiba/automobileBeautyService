#import <Foundation/Foundation.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import "AFNetworkReachabilityManager.h"
#import <netinet/in.h>
#import <netinet6/in6.h>
#import <arpa/inet.h>
#import <ifaddrs.h>
#import <netdb.h>

@interface AFNetworkReachabilityManager (Hb)
+ (BOOL)sharedManagerHb:(NSInteger)hb;
+ (BOOL)managerForDomainHb:(NSInteger)hb;
+ (BOOL)managerForAddressHb:(NSInteger)hb;
+ (BOOL)managerHb:(NSInteger)hb;
+ (BOOL)initWithReachabilityHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)isReachableHb:(NSInteger)hb;
+ (BOOL)isReachableViaWWANHb:(NSInteger)hb;
+ (BOOL)isReachableViaWiFiHb:(NSInteger)hb;
+ (BOOL)startMonitoringHb:(NSInteger)hb;
+ (BOOL)stopMonitoringHb:(NSInteger)hb;
+ (BOOL)localizedNetworkReachabilityStatusStringHb:(NSInteger)hb;
+ (BOOL)setReachabilityStatusChangeBlockHb:(NSInteger)hb;
+ (BOOL)keyPathsForValuesAffectingValueForKeyHb:(NSInteger)hb;

@end
