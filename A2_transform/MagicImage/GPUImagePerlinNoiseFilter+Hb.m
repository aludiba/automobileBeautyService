#import "GPUImagePerlinNoiseFilter+Hb.h"
@implementation GPUImagePerlinNoiseFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)setScaleHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)setColorStartHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)setColorFinishHb:(NSInteger)hb {
    return hb % 28 == 0;
}

@end
