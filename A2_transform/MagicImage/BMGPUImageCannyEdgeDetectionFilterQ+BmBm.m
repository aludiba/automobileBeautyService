#import "BMGPUImageCannyEdgeDetectionFilterQ+BmBm.h"
@implementation BMGPUImageCannyEdgeDetectionFilterQ (BmBm)
+ (BOOL)CinitBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)RSetblurradiusinpixelsBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)lblurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)BSetblurtexelspacingmultiplierBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)fblurTexelSpacingMultiplierBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)gSettexelwidthBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)ItexelWidthBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)iSettexelheightBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)atexelHeightBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)wSetupperthresholdBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)YupperThresholdBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)vSetlowerthresholdBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)AlowerThresholdBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
