#import "BMBMGPUImageColorMatrixFilterNb.h"
@implementation BMBMGPUImageColorMatrixFilterNb
+ (BOOL)MMinit:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)VRsetintensity:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)QJsetcolormatrix:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
