#import "BMGPUImageBilateralFilterf.h"
@implementation BMGPUImageBilateralFilterf
+ (BOOL)Jinit:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)eSetdistancenormalizationfactor:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
