#import "BMUIRefreshControld+Bm.h"
@implementation BMUIRefreshControld (Bm)
+ (BOOL)oRac_CommandbmbmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)USetrac_CommandbmbmBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
