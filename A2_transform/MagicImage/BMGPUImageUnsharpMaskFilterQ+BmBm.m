#import "BMGPUImageUnsharpMaskFilterQ+BmBm.h"
@implementation BMGPUImageUnsharpMaskFilterQ (BmBm)
+ (BOOL)binitBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)gSetblurradiusinpixelsBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)hblurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)cSetintensityBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
