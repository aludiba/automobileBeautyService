#import "BMBMGPUImageToonFilteriB+Bm.h"
@implementation BMBMGPUImageToonFilteriB (Bm)
+ (BOOL)fJinitBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)pIsetthresholdBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)oKsetquantizationlevelsBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
