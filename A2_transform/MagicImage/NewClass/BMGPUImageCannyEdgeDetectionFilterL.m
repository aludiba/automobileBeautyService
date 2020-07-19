#import "BMGPUImageCannyEdgeDetectionFilterL.h"
@implementation BMGPUImageCannyEdgeDetectionFilterL
+ (BOOL)Winit:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)MSetblurradiusinpixels:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)pblurRadiusInPixels:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)nSetblurtexelspacingmultiplier:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)eblurTexelSpacingMultiplier:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)XSettexelwidth:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)AtexelWidth:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)VSettexelheight:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)AtexelHeight:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)CSetupperthreshold:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)AupperThreshold:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)ySetlowerthreshold:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)ZlowerThreshold:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
