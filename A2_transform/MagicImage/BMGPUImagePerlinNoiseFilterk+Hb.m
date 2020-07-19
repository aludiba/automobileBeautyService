#import "BMGPUImagePerlinNoiseFilterk+Hb.h"
@implementation BMGPUImagePerlinNoiseFilterk (Hb)
+ (BOOL)MinitHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)JSetscaleHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)iSetcolorstartHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)bSetcolorfinishHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
