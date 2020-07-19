#import "BMBMGPUImageCannyEdgeDetectionFilterQX.h"
@implementation BMBMGPUImageCannyEdgeDetectionFilterQX
+ (BOOL)WCinit:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)nRsetblurradiusinpixels:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)ZLblurradiusinpixels:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)FBsetblurtexelspacingmultiplier:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)mFblurtexelspacingmultiplier:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)lGsettexelwidth:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)YItexelwidth:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)uIsettexelheight:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)wAtexelheight:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)nWsetupperthreshold:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)HYupperthreshold:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)cVsetlowerthreshold:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)rAlowerthreshold:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
