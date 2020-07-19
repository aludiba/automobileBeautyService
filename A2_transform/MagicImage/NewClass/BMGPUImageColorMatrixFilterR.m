#import "BMGPUImageColorMatrixFilterR.h"
@implementation BMGPUImageColorMatrixFilterR
+ (BOOL)finit:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)rSetintensity:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)ySetcolormatrix:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
