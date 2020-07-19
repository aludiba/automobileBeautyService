#import "GPUImageToonFilter+Bm.h"
@implementation GPUImageToonFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)setThresholdBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)setQuantizationLevelsBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
