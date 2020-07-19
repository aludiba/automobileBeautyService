#import "BMGPUImageUnsharpMaskFiltero.h"
@implementation BMGPUImageUnsharpMaskFiltero
+ (BOOL)Rinit:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)wSetblurradiusinpixels:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)zblurRadiusInPixels:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)TSetintensity:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
