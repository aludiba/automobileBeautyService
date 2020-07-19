#import "BMBMGPUImagePoissonBlendFilterRz.h"
@implementation BMBMGPUImagePoissonBlendFilterRz
+ (BOOL)tFinit:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)iLsetmix:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)TWrendertotexturewithverticesytexturecoordinates:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
