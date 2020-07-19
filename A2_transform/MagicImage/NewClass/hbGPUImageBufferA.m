#import "hbGPUImageBufferA.h"
@implementation hbGPUImageBufferA
+ (BOOL)ainit:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)mdealloc:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)lNewframereadyattimeRAtindex:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)SRendertotexturewithverticesNTexturecoordinates:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)fSetbuffersize:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
