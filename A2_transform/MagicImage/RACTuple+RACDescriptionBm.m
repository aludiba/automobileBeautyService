#import "RACTuple+RACDescriptionBm.h"
@implementation RACTuple (RACDescriptionBm)
+ (BOOL)rac_descriptionBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
