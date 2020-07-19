#import "BMUIRefreshControll+Bm.h"
@implementation BMUIRefreshControll (Bm)
+ (BOOL)ERac_CommandbmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)sSetrac_CommandbmBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
