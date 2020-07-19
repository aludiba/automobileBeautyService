#import "BMGPUImageUnsharpMaskFilterQ+Bm.h"
@implementation BMGPUImageUnsharpMaskFilterQ (Bm)
+ (BOOL)binitBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)gSetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)hblurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)cSetintensityBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
