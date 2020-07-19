#import "AFSecurityPolicy+Bm.h"
@implementation AFSecurityPolicy (Bm)
+ (BOOL)certificatesInBundleBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)defaultPolicyBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)policyWithPinningModeBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)policyWithPinningModeWithpinnedcertificatesBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setPinnedCertificatesBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)evaluateServerTrustFordomainBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)keyPathsForValuesAffectingPinnedPublicKeysBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)supportsSecureCodingBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)encodeWithCoderBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)copyWithZoneBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
