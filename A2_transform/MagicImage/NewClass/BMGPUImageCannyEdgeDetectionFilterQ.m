#import "BMGPUImageCannyEdgeDetectionFilterQ.h"
@implementation BMGPUImageCannyEdgeDetectionFilterQ
+ (BOOL)Cinit:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)RSetblurradiusinpixels:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)lblurRadiusInPixels:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)BSetblurtexelspacingmultiplier:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)fblurTexelSpacingMultiplier:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)gSettexelwidth:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)ItexelWidth:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)iSettexelheight:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)atexelHeight:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)wSetupperthreshold:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)YupperThreshold:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)vSetlowerthreshold:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)AlowerThreshold:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
