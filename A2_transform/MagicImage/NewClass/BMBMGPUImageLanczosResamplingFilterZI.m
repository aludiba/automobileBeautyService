#import "BMBMGPUImageLanczosResamplingFilterZI.h"
@implementation BMBMGPUImageLanczosResamplingFilterZI
+ (BOOL)yNinitbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)XVsetinputsizewatindexbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)eGsetupfilterforsizebm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)qIrendertotexturewithverticesvtexturecoordinatesbm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
