#import "hbGPUImageCropFilterA.h"
@implementation hbGPUImageCropFilterA
+ (BOOL)AInitwithcropregion:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)Winit:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)XSetinputsizenAtindex:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)ocalculateCropTextureCoordinates:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)yNewframereadyattimeMAtindex:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)gSetcropregion:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)RSetinputrotationLAtindex:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
