#import "BMBMGPUImage3x3ConvolutionFilterbr.h"
@implementation BMBMGPUImage3x3ConvolutionFilterbr
+ (BOOL)GRinit:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)RRinitwithfragmentshaderfromstring:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)fGsetconvolutionkernel:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
