#import "BMGPUImageCannyEdgeDetectionFilterO.h"
@implementation BMGPUImageCannyEdgeDetectionFilterO
+ (BOOL)dInitbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)qSetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)jBlurradiusinpixelsbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)cSetblurtexelspacingmultiplierbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)sBlurtexelspacingmultiplierbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)rSettexelwidthbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)CTexelwidthbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)XSettexelheightbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)nTexelheightbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)pSetupperthresholdbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)vUpperthresholdbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)bSetlowerthresholdbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)yLowerthresholdbm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
