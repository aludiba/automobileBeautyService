#import "BMGPUImage3x3ConvolutionFilterv.h"
@implementation BMGPUImage3x3ConvolutionFilterv
+ (BOOL)SInitbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)AInitwithfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)sSetconvolutionkernelbm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
