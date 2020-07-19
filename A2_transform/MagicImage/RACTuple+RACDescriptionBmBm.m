#import "RACTuple+RACDescriptionBmBm.h"
@implementation RACTuple (RACDescriptionBmBm)
+ (BOOL)rac_descriptionBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
