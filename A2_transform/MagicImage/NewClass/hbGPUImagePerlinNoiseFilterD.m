#import "hbGPUImagePerlinNoiseFilterD.h"
@implementation hbGPUImagePerlinNoiseFilterD
+ (BOOL)Pinit:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)zSetscale:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)OSetcolorstart:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)dSetcolorfinish:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
