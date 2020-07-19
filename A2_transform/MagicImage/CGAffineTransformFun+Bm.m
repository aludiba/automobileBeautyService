#import "CGAffineTransformFun+Bm.h"
@implementation CGAffineTransformFun (Bm)
+ (BOOL)radianWithCGAffineTransformBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)scaleXWithCGAffineTransformBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)scaleYWithCGAffineTransformBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)translateWithCGAffineTranformTxTyBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)CGRectForCenterWithAffineTransformCgrectBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
