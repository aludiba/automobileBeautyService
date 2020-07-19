#import "CGAffineTransformFun+BmBm.h"
@implementation CGAffineTransformFun (BmBm)
+ (BOOL)radianWithCGAffineTransformBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)scaleXWithCGAffineTransformBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)scaleYWithCGAffineTransformBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)translateWithCGAffineTranformTxTyBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)CGRectForCenterWithAffineTransformCgrectBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
