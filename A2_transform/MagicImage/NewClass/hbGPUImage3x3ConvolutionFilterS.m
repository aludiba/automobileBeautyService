#import "hbGPUImage3x3ConvolutionFilterS.h"
@implementation hbGPUImage3x3ConvolutionFilterS
+ (BOOL)Binit:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)yInitwithfragmentshaderfromstring:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)USetconvolutionkernel:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
