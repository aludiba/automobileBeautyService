#import "hbBMGPUImage3x3ConvolutionFilterbD.h"
@implementation hbBMGPUImage3x3ConvolutionFilterbD
+ (BOOL)fRinitbm:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)rRinitwithfragmentshaderfromstringbm:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)IGsetconvolutionkernelbm:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
