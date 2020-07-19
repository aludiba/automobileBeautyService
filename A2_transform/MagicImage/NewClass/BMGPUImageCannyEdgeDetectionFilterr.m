#import "BMGPUImageCannyEdgeDetectionFilterr.h"
@implementation BMGPUImageCannyEdgeDetectionFilterr
+ (BOOL)ZInitbmbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)gSetblurradiusinpixelsbmbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)XBlurradiusinpixelsbmbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)NSetblurtexelspacingmultiplierbmbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)bBlurtexelspacingmultiplierbmbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)sSettexelwidthbmbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)MTexelwidthbmbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)YSettexelheightbmbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)BTexelheightbmbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)RSetupperthresholdbmbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)sUpperthresholdbmbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)QSetlowerthresholdbmbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)wLowerthresholdbmbm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
