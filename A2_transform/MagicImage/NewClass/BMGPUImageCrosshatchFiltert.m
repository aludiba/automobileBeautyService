#import "BMGPUImageCrosshatchFiltert.h"
@implementation BMGPUImageCrosshatchFiltert
+ (BOOL)FInitbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)mSetcrosshatchspacingbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)HSetlinewidthbm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
