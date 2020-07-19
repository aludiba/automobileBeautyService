#import "BMGPUImageUnsharpMaskFilterP+Bm.h"
@implementation BMGPUImageUnsharpMaskFilterP (Bm)
+ (BOOL)iInitbmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)dSetblurradiusinpixelsbmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)oBlurradiusinpixelsbmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)gSetintensitybmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
