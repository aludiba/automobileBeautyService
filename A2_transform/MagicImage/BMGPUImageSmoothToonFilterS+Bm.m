#import "BMGPUImageSmoothToonFilterS+Bm.h"
@implementation BMGPUImageSmoothToonFilterS (Bm)
+ (BOOL)eInitbmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)tSetblurradiusinpixelsbmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)WBlurradiusinpixelsbmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)USettexelwidthbmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)oTexelwidthbmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)oSettexelheightbmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)WTexelheightbmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)OSetthresholdbmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)zThresholdbmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)tSetquantizationlevelsbmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)WQuantizationlevelsbmBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
