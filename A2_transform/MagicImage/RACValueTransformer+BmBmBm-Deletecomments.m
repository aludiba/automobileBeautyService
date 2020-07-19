#import "RACValueTransformer+BmBmBm-Deletecomments.h"
@implementation RACValueTransformer (BmBmBm-Deletecomments)
+ (BOOL)allowsReverseTransformationBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)transformedValueBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)transformerWithBlockBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}

@end
