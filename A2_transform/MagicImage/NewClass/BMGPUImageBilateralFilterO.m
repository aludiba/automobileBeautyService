#import "BMGPUImageBilateralFilterO.h"
@implementation BMGPUImageBilateralFilterO
+ (BOOL)jInitbmbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)ySetdistancenormalizationfactorbmbm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
