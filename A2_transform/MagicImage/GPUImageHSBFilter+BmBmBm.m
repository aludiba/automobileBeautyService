#import "GPUImageHSBFilter+BmBmBm.h"
@implementation GPUImageHSBFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)resetBmBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)rotateHueBmBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)adjustSaturationBmBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)adjustBrightnessBmBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)_updateColorMatrixBmBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)0BmBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
