#import "UISlider+RACSignalSupportHb.h"
@implementation UISlider (RACSignalSupportHb)
+ (BOOL)rac_newValueChannelWithNilValueHb:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
