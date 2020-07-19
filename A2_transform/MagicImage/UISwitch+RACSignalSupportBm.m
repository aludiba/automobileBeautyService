#import "UISwitch+RACSignalSupportBm.h"
@implementation UISwitch (RACSignalSupportBm)
+ (BOOL)rac_newOnChannelBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
