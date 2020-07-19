#import "BMBMGPUImageCannyEdgeDetectionFilterQw.h"
@implementation BMBMGPUImageCannyEdgeDetectionFilterQw
+ (BOOL)FCinit:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)PRsetblurradiusinpixels:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)QLblurradiusinpixels:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)rBsetblurtexelspacingmultiplier:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)OFblurtexelspacingmultiplier:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)pGsettexelwidth:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)rItexelwidth:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)WIsettexelheight:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)FAtexelheight:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)UWsetupperthreshold:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)sYupperthreshold:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)wVsetlowerthreshold:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)wAlowerthreshold:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
