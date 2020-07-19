#import "BMGPUImageBilateralFilterc.h"
@implementation BMGPUImageBilateralFilterc
+ (BOOL)vinit:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)hSetdistancenormalizationfactor:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
