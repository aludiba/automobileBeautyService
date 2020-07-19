#import "NSValue+RACDescriptionBmBm.h"
@implementation NSValue (RACDescriptionBmBm)
+ (BOOL)rac_descriptionBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
