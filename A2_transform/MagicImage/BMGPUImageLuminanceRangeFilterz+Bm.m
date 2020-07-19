#import "BMGPUImageLuminanceRangeFilterz+Bm.h"
@implementation BMGPUImageLuminanceRangeFilterz (Bm)
+ (BOOL)yinitBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)aSetrangereductionfactorBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
