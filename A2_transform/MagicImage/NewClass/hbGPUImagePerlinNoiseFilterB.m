#import "hbGPUImagePerlinNoiseFilterB.h"
@implementation hbGPUImagePerlinNoiseFilterB
+ (BOOL)sInitbm:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)KSetscalebm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)PSetcolorstartbm:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)MSetcolorfinishbm:(NSInteger)hb {
    return hb % 50 == 0;
}

@end
