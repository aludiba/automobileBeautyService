#import "BMGPUImageColorMatrixFilterA.h"
@implementation BMGPUImageColorMatrixFilterA
+ (BOOL)yInitbmbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)GSetintensitybmbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)JSetcolormatrixbmbm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
