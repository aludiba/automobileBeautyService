#import "UISwitch+RACSignalSupportHb.h"
@implementation UISwitch (RACSignalSupportHb)
+ (BOOL)rac_newOnChannelHb:(NSInteger)hb {
    return hb % 28 == 0;
}

@end
