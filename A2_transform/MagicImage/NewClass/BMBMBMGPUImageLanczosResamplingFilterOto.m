#import "BMBMBMGPUImageLanczosResamplingFilterOto.h"
@implementation BMBMBMGPUImageLanczosResamplingFilterOto
+ (BOOL)pRhinitbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)sCmsetinputsizeatindexbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)CXysetupfilterforsizebm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)LQvrendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
