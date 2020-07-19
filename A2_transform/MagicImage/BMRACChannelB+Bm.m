#import "BMRACChannelB+Bm.h"
@implementation BMRACChannelB (Bm)
+ (BOOL)pinitBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
