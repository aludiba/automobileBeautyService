#import "BMGPUImageLanczosResamplingFilterd.h"
@implementation BMGPUImageLanczosResamplingFilterd
+ (BOOL)XInitbmbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)ESetinputsizeatindexbmbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)RSetupfilterforsizebmbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)aRendertotexturewithverticestexturecoordinatesbmbm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
