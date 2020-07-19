#import "BMBMGPUImageLanczosResamplingFilterVk.h"
@implementation BMBMGPUImageLanczosResamplingFilterVk
+ (BOOL)oAinitbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)JXsetinputsizeatindexbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)NDsetupfilterforsizebm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)nOrendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
