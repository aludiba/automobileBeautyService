#import "UISwitch+RACSignalSupportBmBm.h"
@implementation UISwitch (RACSignalSupportBmBm)
+ (BOOL)rac_newOnChannelBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
