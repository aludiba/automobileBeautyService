#import "BMRACValueTransformera.h"
@implementation BMRACValueTransformera
+ (BOOL)AAllowsreversetransformationbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)sTransformedvaluebm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)mTransformerwithblockbm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
