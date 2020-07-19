#import "BMGPUImageLanczosResamplingFilterV.h"
@implementation BMGPUImageLanczosResamplingFilterV
+ (BOOL)aInitbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)xSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)DSetupfilterforsizebm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)oRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
