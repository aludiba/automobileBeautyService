#import "BMRACValueTransformera+Bm.h"
@implementation BMRACValueTransformera (Bm)
+ (BOOL)AAllowsreversetransformationbmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)sTransformedvaluebmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)mTransformerwithblockbmBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
