#import "NSString+RACDescriptionBm.h"
@implementation NSString (RACDescriptionBm)
+ (BOOL)rac_descriptionBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
