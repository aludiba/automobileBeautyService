#import "BMUISwitchS+Bm.h"
@implementation BMUISwitchS (Bm)
+ (BOOL)erac_newOnChannelBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
