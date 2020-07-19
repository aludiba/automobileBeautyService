#import "hbBMGPUImagePerlinNoiseFilterNk.h"
@implementation hbBMGPUImagePerlinNoiseFilterNk
+ (BOOL)BTinitbmbm:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)HSsetscalebmbm:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)cSsetcolorstartbmbm:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)TYsetcolorfinishbmbm:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
