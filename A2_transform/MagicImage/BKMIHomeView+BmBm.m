#import "BKMIHomeView+BmBm.h"
@implementation BKMIHomeView (BmBm)
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)BKtapBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
