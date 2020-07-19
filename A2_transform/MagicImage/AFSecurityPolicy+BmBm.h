#import <Foundation/Foundation.h>
#import <Security/Security.h>
#import "AFSecurityPolicy.h"
#import <AssertMacros.h>
#import "AFSecurityPolicy+Bm.h"

@interface AFSecurityPolicy (BmBm)
+ (BOOL)certificatesInBundleBmBm:(NSInteger)BM;
+ (BOOL)defaultPolicyBmBm:(NSInteger)BM;
+ (BOOL)policyWithPinningModeBmBm:(NSInteger)BM;
+ (BOOL)policyWithPinningModeWithpinnedcertificatesBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setPinnedCertificatesBmBm:(NSInteger)BM;
+ (BOOL)evaluateServerTrustFordomainBmBm:(NSInteger)BM;
+ (BOOL)keyPathsForValuesAffectingPinnedPublicKeysBmBm:(NSInteger)BM;
+ (BOOL)supportsSecureCodingBmBm:(NSInteger)BM;
+ (BOOL)initWithCoderBmBm:(NSInteger)BM;
+ (BOOL)encodeWithCoderBmBm:(NSInteger)BM;
+ (BOOL)copyWithZoneBmBm:(NSInteger)BM;

@end
