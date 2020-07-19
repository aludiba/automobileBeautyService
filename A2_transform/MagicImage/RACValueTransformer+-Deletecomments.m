#import "RACValueTransformer+-Deletecomments.h"
@implementation RACValueTransformer (-Deletecomments)
+ (BOOL)allowsReverseTransformation-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)transformedValue-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)transformerWithBlock-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}

@end
