#import "BMGPUImageSmoothToonFilterL+BmBm.h"
@implementation BMGPUImageSmoothToonFilterL (BmBm)
+ (BOOL)pinitBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)cSetblurradiusinpixelsBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)tblurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)zSettexelwidthBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)ntexelWidthBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)qSettexelheightBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)dtexelHeightBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)MSetthresholdBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)UthresholdBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)oSetquantizationlevelsBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)JquantizationLevelsBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
