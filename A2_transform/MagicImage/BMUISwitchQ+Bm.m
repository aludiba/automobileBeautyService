#import "BMUISwitchQ+Bm.h"
@implementation BMUISwitchQ (Bm)
+ (BOOL)PRac_NewonchannelbmBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
