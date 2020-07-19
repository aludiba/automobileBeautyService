#import "BMGPUImage3x3ConvolutionFilterb+BmHb.h"
@implementation BMGPUImage3x3ConvolutionFilterb (BmHb)
+ (BOOL)rinitBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)rInitwithfragmentshaderfromstringBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)gSetconvolutionkernelBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
