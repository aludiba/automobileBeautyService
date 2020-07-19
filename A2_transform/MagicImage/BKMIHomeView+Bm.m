#import "BKMIHomeView+Bm.h"
@implementation BKMIHomeView (Bm)
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)BKtapBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
