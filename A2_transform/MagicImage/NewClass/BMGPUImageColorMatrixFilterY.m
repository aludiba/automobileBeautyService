#import "BMGPUImageColorMatrixFilterY.h"
@implementation BMGPUImageColorMatrixFilterY
+ (BOOL)FInitbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)fSetintensitybm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)sSetcolormatrixbm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
