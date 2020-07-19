#import "hbGPUImageCropFilterv.h"
@implementation hbGPUImageCropFilterv
+ (BOOL)gInitwithcropregion:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)ainit:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)oSetinputsizekAtindex:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)DcalculateCropTextureCoordinates:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)INewframereadyattimeJAtindex:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)ESetcropregion:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)wSetinputrotationZAtindex:(NSInteger)hb {
    return hb % 8 == 0;
}

@end
