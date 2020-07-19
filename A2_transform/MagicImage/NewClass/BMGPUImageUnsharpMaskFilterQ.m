#import "BMGPUImageUnsharpMaskFilterQ.h"
@implementation BMGPUImageUnsharpMaskFilterQ
+ (BOOL)binit:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)gSetblurradiusinpixels:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)hblurRadiusInPixels:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)cSetintensity:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
