#import "BMGPUImageSmoothToonFilterL.h"
@implementation BMGPUImageSmoothToonFilterL
+ (BOOL)pinit:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)cSetblurradiusinpixels:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)tblurRadiusInPixels:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)zSettexelwidth:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)ntexelWidth:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)qSettexelheight:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)dtexelHeight:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)MSetthreshold:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)Uthreshold:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)oSetquantizationlevels:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)JquantizationLevels:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
