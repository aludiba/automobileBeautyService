#import "GPUImageAdaptiveThresholdFilter+Bm.h"
@implementation GPUImageAdaptiveThresholdFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)blurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
