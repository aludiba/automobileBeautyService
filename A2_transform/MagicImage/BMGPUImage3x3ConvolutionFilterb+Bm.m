#import "BMGPUImage3x3ConvolutionFilterb+Bm.h"
@implementation BMGPUImage3x3ConvolutionFilterb (Bm)
+ (BOOL)rinitBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)rInitwithfragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)gSetconvolutionkernelBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
