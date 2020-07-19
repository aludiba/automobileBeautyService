#import "BMBMGPUImageCropFilterfT.h"
@implementation BMBMGPUImageCropFilterfT
+ (BOOL)HJinitwithcropregionbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)IKinitbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)jMsetinputsizeatindexbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)SDcalculatecroptexturecoordinatesbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)iMnewframereadyattimeatindexbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)eJsetcropregionbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)iIsetinputrotationatindexbm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
