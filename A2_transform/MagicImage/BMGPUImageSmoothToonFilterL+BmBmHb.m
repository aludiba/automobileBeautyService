#import "BMGPUImageSmoothToonFilterL+BmBmHb.h"
@implementation BMGPUImageSmoothToonFilterL (BmBmHb)
+ (BOOL)pinitBmBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)cSetblurradiusinpixelsBmBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)tblurRadiusInPixelsBmBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)zSettexelwidthBmBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)ntexelWidthBmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)qSettexelheightBmBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)dtexelHeightBmBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)MSetthresholdBmBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)UthresholdBmBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)oSetquantizationlevelsBmBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)JquantizationLevelsBmBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
