#import "BMUIRefreshControll+BmBm.h"
@implementation BMUIRefreshControll (BmBm)
+ (BOOL)ERac_CommandbmBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)sSetrac_CommandbmBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
