#import <Foundation/Foundation.h>
#import <Security/Security.h>
#import "AFSecurityPolicy.h"
#import <AssertMacros.h>

@interface AFSecurityPolicy (Bm)
+ (BOOL)certificatesInBundleBm:(NSInteger)BM;
+ (BOOL)defaultPolicyBm:(NSInteger)BM;
+ (BOOL)policyWithPinningModeBm:(NSInteger)BM;
+ (BOOL)policyWithPinningModeWithpinnedcertificatesBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setPinnedCertificatesBm:(NSInteger)BM;
+ (BOOL)evaluateServerTrustFordomainBm:(NSInteger)BM;
+ (BOOL)keyPathsForValuesAffectingPinnedPublicKeysBm:(NSInteger)BM;
+ (BOOL)supportsSecureCodingBm:(NSInteger)BM;
+ (BOOL)initWithCoderBm:(NSInteger)BM;
+ (BOOL)encodeWithCoderBm:(NSInteger)BM;
+ (BOOL)copyWithZoneBm:(NSInteger)BM;

@end
