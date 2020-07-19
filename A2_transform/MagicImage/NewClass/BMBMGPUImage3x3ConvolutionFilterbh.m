#import "BMBMGPUImage3x3ConvolutionFilterbh.h"
@implementation BMBMGPUImage3x3ConvolutionFilterbh
+ (BOOL)LRinit:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)eRinitwithfragmentshaderfromstring:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)xGsetconvolutionkernel:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
