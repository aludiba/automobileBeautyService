#import "BMBMUIRefreshControllw+Bm.h"
@implementation BMBMUIRefreshControllw (Bm)
+ (BOOL)EErac_CommandbmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)ySsetrac_CommandbmBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
