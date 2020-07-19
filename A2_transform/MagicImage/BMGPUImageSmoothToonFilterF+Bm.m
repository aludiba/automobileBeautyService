#import "BMGPUImageSmoothToonFilterF+Bm.h"
@implementation BMGPUImageSmoothToonFilterF (Bm)
+ (BOOL)UinitBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)qSetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)sblurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)vSettexelwidthBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)BtexelWidthBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)RSettexelheightBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)itexelHeightBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)ySetthresholdBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)dthresholdBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)LSetquantizationlevelsBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)kquantizationLevelsBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
