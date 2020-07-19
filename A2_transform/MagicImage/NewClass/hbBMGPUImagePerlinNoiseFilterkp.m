#import "hbBMGPUImagePerlinNoiseFilterkp.h"
@implementation hbBMGPUImagePerlinNoiseFilterkp
+ (BOOL)WMinit:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)aJsetscale:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)nIsetcolorstart:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)yBsetcolorfinish:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
