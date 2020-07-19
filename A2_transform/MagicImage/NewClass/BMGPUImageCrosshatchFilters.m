#import "BMGPUImageCrosshatchFilters.h"
@implementation BMGPUImageCrosshatchFilters
+ (BOOL)SInitbmbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)USetcrosshatchspacingbmbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)YSetlinewidthbmbm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
