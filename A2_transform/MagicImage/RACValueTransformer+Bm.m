#import "RACValueTransformer+Bm.h"
@implementation RACValueTransformer (Bm)
+ (BOOL)allowsReverseTransformationBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)transformedValueBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)transformerWithBlockBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
