#import "hbGPUImagePolarPixellateFilterp.h"
@implementation hbGPUImagePolarPixellateFilterp
+ (BOOL)Dinit:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)USetinputrotationaAtindex:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)qSetpixelsize:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)qSetcenter:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
