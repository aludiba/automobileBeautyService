#import "BMQMProgressHUDO+Bm.h"
@implementation BMQMProgressHUDO (Bm)
+ (BOOL)tshowBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)ahideBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
