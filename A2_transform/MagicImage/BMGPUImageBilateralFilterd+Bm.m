#import "BMGPUImageBilateralFilterd+Bm.h"
@implementation BMGPUImageBilateralFilterd (Bm)
+ (BOOL)JInitbmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)QSetdistancenormalizationfactorbmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
