#import "BKMIHomeToolsView+Bm.h"
@implementation BKMIHomeToolsView (Bm)
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)BKtapBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
