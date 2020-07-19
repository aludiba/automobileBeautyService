#import "BMGPUImageCannyEdgeDetectionFilterQ+Bm.h"
@implementation BMGPUImageCannyEdgeDetectionFilterQ (Bm)
+ (BOOL)CinitBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)RSetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)lblurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)BSetblurtexelspacingmultiplierBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)fblurTexelSpacingMultiplierBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)gSettexelwidthBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)ItexelWidthBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)iSettexelheightBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)atexelHeightBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)wSetupperthresholdBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)YupperThresholdBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)vSetlowerthresholdBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)AlowerThresholdBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
