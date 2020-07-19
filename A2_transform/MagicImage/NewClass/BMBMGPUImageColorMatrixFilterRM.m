#import "BMBMGPUImageColorMatrixFilterRM.h"
@implementation BMBMGPUImageColorMatrixFilterRM
+ (BOOL)yFinit:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)uRsetintensity:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)GYsetcolormatrix:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
