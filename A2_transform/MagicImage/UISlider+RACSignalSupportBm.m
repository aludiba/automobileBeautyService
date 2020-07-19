#import "UISlider+RACSignalSupportBm.h"
@implementation UISlider (RACSignalSupportBm)
+ (BOOL)rac_newValueChannelWithNilValueBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
