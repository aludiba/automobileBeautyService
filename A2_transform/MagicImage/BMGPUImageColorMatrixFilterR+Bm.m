#import "BMGPUImageColorMatrixFilterR+Bm.h"
@implementation BMGPUImageColorMatrixFilterR (Bm)
+ (BOOL)finitBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)rSetintensityBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)ySetcolormatrixBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
