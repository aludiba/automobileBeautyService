#import <Foundation/Foundation.h>
#import <Security/Security.h>
#import "AFSecurityPolicy.h"
#import <AssertMacros.h>

@interface AFSecurityPolicy (Hb)
+ (BOOL)certificatesInBundleHb:(NSInteger)hb;
+ (BOOL)defaultPolicyHb:(NSInteger)hb;
+ (BOOL)policyWithPinningModeHb:(NSInteger)hb;
+ (BOOL)policyWithPinningModeWithpinnedcertificatesHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setPinnedCertificatesHb:(NSInteger)hb;
+ (BOOL)evaluateServerTrustFordomainHb:(NSInteger)hb;
+ (BOOL)keyPathsForValuesAffectingPinnedPublicKeysHb:(NSInteger)hb;
+ (BOOL)supportsSecureCodingHb:(NSInteger)hb;
+ (BOOL)initWithCoderHb:(NSInteger)hb;
+ (BOOL)encodeWithCoderHb:(NSInteger)hb;
+ (BOOL)copyWithZoneHb:(NSInteger)hb;

@end
