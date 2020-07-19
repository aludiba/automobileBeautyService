#import "BMGPUImage3x3ConvolutionFilterb.h"
@implementation BMGPUImage3x3ConvolutionFilterb
+ (BOOL)rinit:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)rInitwithfragmentshaderfromstring:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)gSetconvolutionkernel:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
