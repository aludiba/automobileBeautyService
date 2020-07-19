#import "BMRACValueTransformern+BmHb.h"
@implementation BMRACValueTransformern (BmHb)
+ (BOOL)PallowsReverseTransformationBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)pTransformedvalueBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)STransformerwithblockBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}

@end
