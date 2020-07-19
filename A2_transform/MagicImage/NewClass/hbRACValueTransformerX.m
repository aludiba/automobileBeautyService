#import "hbRACValueTransformerX.h"
@implementation hbRACValueTransformerX
+ (BOOL)pallowsReverseTransformation:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)OTransformedvalue:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)gTransformerwithblock:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
