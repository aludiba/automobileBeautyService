#import "hbGPUImageSwirlFilterj.h"
@implementation hbGPUImageSwirlFilterj
+ (BOOL)ainit:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)wSetinputrotationfAtindex:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)rSetradius:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)BSetangle:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)XSetcenter:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
