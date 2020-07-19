#import "GPUImageLevelsFilter+Hb.h"
@implementation GPUImageLevelsFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)updateUniformsHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)setMinGammaMaxMinoutMaxoutHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setMinGammaMaxHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setRedMinGammaMaxMinoutMaxoutHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)setRedMinGammaMaxHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)setGreenMinGammaMaxMinoutMaxoutHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)setGreenMinGammaMaxHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)setBlueMinGammaMaxMinoutMaxoutHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)setBlueMinGammaMaxHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
