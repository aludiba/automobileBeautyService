#import "hbGPUImagePolarPixellateFilterJ.h"
@implementation hbGPUImagePolarPixellateFilterJ
+ (BOOL)Kinit:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)qSetinputrotationWAtindex:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)eSetpixelsize:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)qSetcenter:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
