#import "BMGPUImageColorMatrixFilteru.h"
@implementation BMGPUImageColorMatrixFilteru
+ (BOOL)vInitbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)NSetintensitybm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)NSetcolormatrixbm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
