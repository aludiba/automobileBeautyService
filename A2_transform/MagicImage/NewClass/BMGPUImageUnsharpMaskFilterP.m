#import "BMGPUImageUnsharpMaskFilterP.h"
@implementation BMGPUImageUnsharpMaskFilterP
+ (BOOL)iInitbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)dSetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)oBlurradiusinpixelsbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)gSetintensitybm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
