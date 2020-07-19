#import "RACValueTransformer+BmBmBm.h"
@implementation RACValueTransformer (BmBmBm)
+ (BOOL)allowsReverseTransformationBmBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)transformedValueBmBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)transformerWithBlockBmBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
