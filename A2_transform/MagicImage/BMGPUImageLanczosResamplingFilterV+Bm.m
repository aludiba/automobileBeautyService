#import "BMGPUImageLanczosResamplingFilterV+Bm.h"
@implementation BMGPUImageLanczosResamplingFilterV (Bm)
+ (BOOL)aInitbmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)xSetinputsizeatindexbmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)DSetupfilterforsizebmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)oRendertotexturewithverticestexturecoordinatesbmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
