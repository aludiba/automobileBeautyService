#import "BMBMGPUImageCrosshatchFilterjR.h"
@implementation BMBMGPUImageCrosshatchFilterjR
+ (BOOL)oFinit:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)nIsetcrosshatchspacing:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)hOsetlinewidth:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
