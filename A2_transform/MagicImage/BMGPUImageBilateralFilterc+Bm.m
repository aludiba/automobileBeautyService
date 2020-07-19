#import "BMGPUImageBilateralFilterc+Bm.h"
@implementation BMGPUImageBilateralFilterc (Bm)
+ (BOOL)vinitBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)hSetdistancenormalizationfactorBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
