#import "BMBMGPUImage3x3ConvolutionFilterQW.h"
@implementation BMBMGPUImage3x3ConvolutionFilterQW
+ (BOOL)oWinit:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)HFinitwithfragmentshaderfromstring:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)XWsetconvolutionkernel:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
