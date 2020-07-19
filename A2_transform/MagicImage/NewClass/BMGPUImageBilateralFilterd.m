#import "BMGPUImageBilateralFilterd.h"
@implementation BMGPUImageBilateralFilterd
+ (BOOL)JInitbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)QSetdistancenormalizationfactorbm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
