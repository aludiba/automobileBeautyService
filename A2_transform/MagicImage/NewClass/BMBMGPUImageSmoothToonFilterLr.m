#import "BMBMGPUImageSmoothToonFilterLr.h"
@implementation BMBMGPUImageSmoothToonFilterLr
+ (BOOL)hPinitbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)mCsetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)JTblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)pZsettexelwidthbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)PNtexelwidthbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)BQsettexelheightbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)iDtexelheightbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)cMsetthresholdbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)mUthresholdbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)WOsetquantizationlevelsbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)CJquantizationlevelsbm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
