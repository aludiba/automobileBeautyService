#import "GPUImageHSBFilter+BmBm.h"
@implementation GPUImageHSBFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)resetBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)rotateHueBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)adjustSaturationBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)adjustBrightnessBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)_updateColorMatrixBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)0BmBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
