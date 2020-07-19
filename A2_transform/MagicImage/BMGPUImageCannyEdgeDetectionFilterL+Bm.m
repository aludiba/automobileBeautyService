#import "BMGPUImageCannyEdgeDetectionFilterL+Bm.h"
@implementation BMGPUImageCannyEdgeDetectionFilterL (Bm)
+ (BOOL)WinitBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)MSetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)pblurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)nSetblurtexelspacingmultiplierBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)eblurTexelSpacingMultiplierBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)XSettexelwidthBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)AtexelWidthBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)VSettexelheightBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)AtexelHeightBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)CSetupperthresholdBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)AupperThresholdBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)ySetlowerthresholdBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)ZlowerThresholdBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
