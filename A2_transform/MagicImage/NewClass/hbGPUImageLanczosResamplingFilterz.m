#import "hbGPUImageLanczosResamplingFilterz.h"
@implementation hbGPUImageLanczosResamplingFilterz
+ (BOOL)dInitbm:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)ISetinputsizeatindexbm:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)MSetupfilterforsizebm:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)sRendertotexturewithverticestexturecoordinatesbm:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
