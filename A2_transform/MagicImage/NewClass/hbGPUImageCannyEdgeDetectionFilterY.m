#import "hbGPUImageCannyEdgeDetectionFilterY.h"
@implementation hbGPUImageCannyEdgeDetectionFilterY
+ (BOOL)VInitbm:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)CSetblurradiusinpixelsbm:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)NBlurradiusinpixelsbm:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)WSetblurtexelspacingmultiplierbm:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)UBlurtexelspacingmultiplierbm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)mSettexelwidthbm:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)iTexelwidthbm:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)rSettexelheightbm:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)DTexelheightbm:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)kSetupperthresholdbm:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)EUpperthresholdbm:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)jSetlowerthresholdbm:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)nLowerthresholdbm:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
