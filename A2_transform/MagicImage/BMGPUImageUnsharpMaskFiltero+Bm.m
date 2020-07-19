#import "BMGPUImageUnsharpMaskFiltero+Bm.h"
@implementation BMGPUImageUnsharpMaskFiltero (Bm)
+ (BOOL)RinitBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)wSetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)zblurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)TSetintensityBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
