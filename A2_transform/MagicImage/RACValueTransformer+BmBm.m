#import "RACValueTransformer+BmBm.h"
@implementation RACValueTransformer (BmBm)
+ (BOOL)allowsReverseTransformationBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)transformedValueBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)transformerWithBlockBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
