#import "BMGPUImage3x3ConvolutionFilterb+BmBm.h"
@implementation BMGPUImage3x3ConvolutionFilterb (BmBm)
+ (BOOL)rinitBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)rInitwithfragmentshaderfromstringBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)gSetconvolutionkernelBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
