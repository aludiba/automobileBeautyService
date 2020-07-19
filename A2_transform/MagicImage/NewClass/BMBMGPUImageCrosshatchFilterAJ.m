#import "BMBMGPUImageCrosshatchFilterAJ.h"
@implementation BMBMGPUImageCrosshatchFilterAJ
+ (BOOL)cXinit:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)iLsetcrosshatchspacing:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)sLsetlinewidth:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
