#import "BMGPUImageColorMatrixFilterN+Bm.h"
@implementation BMGPUImageColorMatrixFilterN (Bm)
+ (BOOL)minitBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)RSetintensityBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)JSetcolormatrixBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
