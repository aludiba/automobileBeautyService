#import "UISwitch+RACSignalSupportBmHb.h"
@implementation UISwitch (RACSignalSupportBmHb)
+ (BOOL)rac_newOnChannelBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
