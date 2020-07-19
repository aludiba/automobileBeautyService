#import "BMGPUImageColorMatrixFilterN.h"
@implementation BMGPUImageColorMatrixFilterN
+ (BOOL)minit:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)RSetintensity:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)JSetcolormatrix:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
