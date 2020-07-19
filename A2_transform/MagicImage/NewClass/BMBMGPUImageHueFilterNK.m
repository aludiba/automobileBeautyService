#import "BMBMGPUImageHueFilterNK.h"
@implementation BMBMGPUImageHueFilterNK
+ (BOOL)lRinitbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)hXsethuebm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
