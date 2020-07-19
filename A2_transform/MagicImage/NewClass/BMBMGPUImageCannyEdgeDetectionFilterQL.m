#import "BMBMGPUImageCannyEdgeDetectionFilterQL.h"
@implementation BMBMGPUImageCannyEdgeDetectionFilterQL
+ (BOOL)JCinitbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)lRsetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)rLblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)UBsetblurtexelspacingmultiplierbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)AFblurtexelspacingmultiplierbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)zGsettexelwidthbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)TItexelwidthbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)hIsettexelheightbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)IAtexelheightbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)EWsetupperthresholdbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)LYupperthresholdbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)LVsetlowerthresholdbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)FAlowerthresholdbm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
