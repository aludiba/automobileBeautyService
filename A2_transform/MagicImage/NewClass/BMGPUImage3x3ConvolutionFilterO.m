#import "BMGPUImage3x3ConvolutionFilterO.h"
@implementation BMGPUImage3x3ConvolutionFilterO
+ (BOOL)eInitbmbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)bInitwithfragmentshaderfromstringbmbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)cSetconvolutionkernelbmbm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
