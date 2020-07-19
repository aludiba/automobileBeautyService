#import "GPUImageHSBFilter+Bm.h"
@implementation GPUImageHSBFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)resetBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)rotateHueBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)adjustSaturationBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)adjustBrightnessBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)_updateColorMatrixBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)for(x=0Bm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
