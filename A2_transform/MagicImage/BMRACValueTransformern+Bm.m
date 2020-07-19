#import "BMRACValueTransformern+Bm.h"
@implementation BMRACValueTransformern (Bm)
+ (BOOL)PallowsReverseTransformationBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)pTransformedvalueBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)STransformerwithblockBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
