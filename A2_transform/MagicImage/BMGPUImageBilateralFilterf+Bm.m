#import "BMGPUImageBilateralFilterf+Bm.h"
@implementation BMGPUImageBilateralFilterf (Bm)
+ (BOOL)JinitBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)eSetdistancenormalizationfactorBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
