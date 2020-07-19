#import "UISlider+RACSignalSupportBmBmBm.h"
@implementation UISlider (RACSignalSupportBmBmBm)
+ (BOOL)rac_newValueChannelWithNilValueBmBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
