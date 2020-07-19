#import "RACTuple+RACDescriptionHb.h"
@implementation RACTuple (RACDescriptionHb)
+ (BOOL)rac_descriptionHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
