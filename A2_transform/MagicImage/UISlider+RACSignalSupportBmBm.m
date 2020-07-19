#import "UISlider+RACSignalSupportBmBm.h"
@implementation UISlider (RACSignalSupportBmBm)
+ (BOOL)rac_newValueChannelWithNilValueBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
