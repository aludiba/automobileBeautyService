#import "hbGPUImageLanczosResamplingFilterV.h"
@implementation hbGPUImageLanczosResamplingFilterV
+ (BOOL)bInitbm:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)tSetinputsizeatindexbm:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)DSetupfilterforsizebm:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)ORendertotexturewithverticestexturecoordinatesbm:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
