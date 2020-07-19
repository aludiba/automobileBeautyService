#import "BMGPUImage3x3ConvolutionFilterW.h"
@implementation BMGPUImage3x3ConvolutionFilterW
+ (BOOL)dInitbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)PInitwithfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)pSetconvolutionkernelbm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
