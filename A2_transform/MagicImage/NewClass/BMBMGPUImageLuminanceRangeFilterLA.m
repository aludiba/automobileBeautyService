#import "BMBMGPUImageLuminanceRangeFilterLA.h"
@implementation BMBMGPUImageLuminanceRangeFilterLA
+ (BOOL)gNinitbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)mIsetrangereductionfactorbm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
