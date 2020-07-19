#import "GPUImageAdaptiveThresholdFilter+BmBm.h"
@implementation GPUImageAdaptiveThresholdFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
