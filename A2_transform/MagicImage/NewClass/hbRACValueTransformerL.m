#import "hbRACValueTransformerL.h"
@implementation hbRACValueTransformerL
+ (BOOL)oallowsReverseTransformation:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)ATransformedvalue:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)sTransformerwithblock:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
