#import "BMBMGPUImageGammaFilterTh.h"
@implementation BMBMGPUImageGammaFilterTh
+ (BOOL)xRinitbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)kSsetgammabm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
