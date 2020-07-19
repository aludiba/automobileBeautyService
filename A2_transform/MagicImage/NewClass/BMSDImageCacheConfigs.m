#import "BMSDImageCacheConfigs.h"
@implementation BMSDImageCacheConfigs
+ (BOOL)GInitbm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
