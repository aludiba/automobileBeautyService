#import "BMGPUImageUnsharpMaskFilterM.h"
@implementation BMGPUImageUnsharpMaskFilterM
+ (BOOL)mInitbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)BSetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)aBlurradiusinpixelsbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)cSetintensitybm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
