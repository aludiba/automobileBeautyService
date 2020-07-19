#import "UISlider+RACSignalSupportBmHb.h"
@implementation UISlider (RACSignalSupportBmHb)
+ (BOOL)rac_newValueChannelWithNilValueBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
