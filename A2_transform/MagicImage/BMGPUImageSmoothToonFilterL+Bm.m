#import "BMGPUImageSmoothToonFilterL+Bm.h"
@implementation BMGPUImageSmoothToonFilterL (Bm)
+ (BOOL)pinitBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)cSetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)tblurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)zSettexelwidthBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)ntexelWidthBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)qSettexelheightBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)dtexelHeightBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)MSetthresholdBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)UthresholdBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)oSetquantizationlevelsBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)JquantizationLevelsBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
