#import "BMGPUImageCannyEdgeDetectionFilterA.h"
@implementation BMGPUImageCannyEdgeDetectionFilterA
+ (BOOL)lInitbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)bSetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)uBlurradiusinpixelsbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)HSetblurtexelspacingmultiplierbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)ABlurtexelspacingmultiplierbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)LSettexelwidthbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)MTexelwidthbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)iSettexelheightbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)OTexelheightbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)rSetupperthresholdbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)XUpperthresholdbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)oSetlowerthresholdbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)oLowerthresholdbm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
