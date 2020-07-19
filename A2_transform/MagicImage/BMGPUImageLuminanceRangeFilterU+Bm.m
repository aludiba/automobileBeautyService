#import "BMGPUImageLuminanceRangeFilterU+Bm.h"
@implementation BMGPUImageLuminanceRangeFilterU (Bm)
+ (BOOL)DinitBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)VSetrangereductionfactorBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
