#import "hbGPUImageStretchDistortionFilterN.h"
@implementation hbGPUImageStretchDistortionFilterN
+ (BOOL)Iinit:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)wSetinputrotationuAtindex:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)zSetcenter:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
