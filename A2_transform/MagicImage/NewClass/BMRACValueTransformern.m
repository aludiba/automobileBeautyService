#import "BMRACValueTransformern.h"
@implementation BMRACValueTransformern
+ (BOOL)PallowsReverseTransformation:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)pTransformedvalue:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)STransformerwithblock:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
