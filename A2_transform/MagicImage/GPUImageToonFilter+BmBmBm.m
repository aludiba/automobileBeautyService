#import "GPUImageToonFilter+BmBmBm.h"
@implementation GPUImageToonFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setThresholdBmBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setQuantizationLevelsBmBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
