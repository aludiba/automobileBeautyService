#import "hbGPUImagePerlinNoiseFilterE.h"
@implementation hbGPUImagePerlinNoiseFilterE
+ (BOOL)iInitbm:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)pSetscalebm:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)HSetcolorstartbm:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)wSetcolorfinishbm:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
