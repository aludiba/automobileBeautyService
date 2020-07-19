#import "BMGPUImageBilateralFilterc+BmBm.h"
@implementation BMGPUImageBilateralFilterc (BmBm)
+ (BOOL)vinitBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)hSetdistancenormalizationfactorBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
