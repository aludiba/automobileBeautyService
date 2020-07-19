#import "BMGPUImageSmoothToonFiltero.h"
@implementation BMGPUImageSmoothToonFiltero
+ (BOOL)PInitbmbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)qSetblurradiusinpixelsbmbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)IBlurradiusinpixelsbmbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)kSettexelwidthbmbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)oTexelwidthbmbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)pSettexelheightbmbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)wTexelheightbmbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)wSetthresholdbmbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)wThresholdbmbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)USetquantizationlevelsbmbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)zQuantizationlevelsbmbm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
