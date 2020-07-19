#import "BMGPUImageCrosshatchFilterY.h"
@implementation BMGPUImageCrosshatchFilterY
+ (BOOL)RInitbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)eSetcrosshatchspacingbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)PSetlinewidthbm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
