#import "hbGPUImagePerlinNoiseFilterM.h"
@implementation hbGPUImagePerlinNoiseFilterM
+ (BOOL)sinit:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)WSetscale:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)YSetcolorstart:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)ASetcolorfinish:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
