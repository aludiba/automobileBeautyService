#import "RACValueTransformer+BmBmBmHb.h"
@implementation RACValueTransformer (BmBmBmHb)
+ (BOOL)allowsReverseTransformationBmBmBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)transformedValueBmBmBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)transformerWithBlockBmBmBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
