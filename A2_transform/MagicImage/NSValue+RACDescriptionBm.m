#import "NSValue+RACDescriptionBm.h"
@implementation NSValue (RACDescriptionBm)
+ (BOOL)rac_descriptionBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
