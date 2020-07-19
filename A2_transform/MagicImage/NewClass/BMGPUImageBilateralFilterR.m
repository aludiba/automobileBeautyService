#import "BMGPUImageBilateralFilterR.h"
@implementation BMGPUImageBilateralFilterR
+ (BOOL)AInitbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)jSetdistancenormalizationfactorbm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
