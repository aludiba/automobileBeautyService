#import "RACValueTransformer+Hb.h"
@implementation RACValueTransformer (Hb)
+ (BOOL)allowsReverseTransformationHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)transformedValueHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)transformerWithBlockHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
