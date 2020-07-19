#import "hbGPUImageBufferN.h"
@implementation hbGPUImageBufferN
+ (BOOL)dinit:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)udealloc:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)cNewframereadyattimekAtindex:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)FRendertotexturewithverticesvTexturecoordinates:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)sSetbuffersize:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
