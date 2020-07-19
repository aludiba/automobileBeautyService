#import "hbGPUImageSwirlFilterQ.h"
@implementation hbGPUImageSwirlFilterQ
+ (BOOL)vinit:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)BSetinputrotationXAtindex:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)vSetradius:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)LSetangle:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)hSetcenter:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
