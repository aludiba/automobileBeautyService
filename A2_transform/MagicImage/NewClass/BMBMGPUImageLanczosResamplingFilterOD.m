#import "BMBMGPUImageLanczosResamplingFilterOD.h"
@implementation BMBMGPUImageLanczosResamplingFilterOD
+ (BOOL)WHinitbmbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)CMsetinputsizeatindexbmbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)TYsetupfilterforsizebmbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)yVrendertotexturewithverticestexturecoordinatesbmbm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
