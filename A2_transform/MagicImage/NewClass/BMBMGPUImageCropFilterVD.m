#import "BMBMGPUImageCropFilterVD.h"
@implementation BMBMGPUImageCropFilterVD
+ (BOOL)xFinitwithcropregion:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)HEinit:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)XLsetinputsizecatindex:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)PCcalculatecroptexturecoordinates:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)dVnewframereadyattimekatindex:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)bRsetcropregion:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)wRsetinputrotationkatindex:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
