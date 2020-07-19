#import "BKMIMoreHeaderView+BmBm.h"
@implementation BKMIMoreHeaderView (BmBm)
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)BKtapBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)BKupdateViewsBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
