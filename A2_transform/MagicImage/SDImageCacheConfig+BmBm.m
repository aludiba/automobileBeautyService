#import "SDImageCacheConfig+BmBm.h"
@implementation SDImageCacheConfig (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
