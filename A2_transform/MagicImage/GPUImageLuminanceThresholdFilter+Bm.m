#import "GPUImageLuminanceThresholdFilter+Bm.h"
@implementation GPUImageLuminanceThresholdFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setThresholdBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
