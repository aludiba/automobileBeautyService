#import "BMGPUImageSmoothToonFilterF.h"
@implementation BMGPUImageSmoothToonFilterF
+ (BOOL)Uinit:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)qSetblurradiusinpixels:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)sblurRadiusInPixels:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)vSettexelwidth:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)BtexelWidth:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)RSettexelheight:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)itexelHeight:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)ySetthreshold:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)dthreshold:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)LSetquantizationlevels:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)kquantizationLevels:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
