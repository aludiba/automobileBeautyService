#import "NSString+RACDescriptionBmBm.h"
@implementation NSString (RACDescriptionBmBm)
+ (BOOL)rac_descriptionBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
