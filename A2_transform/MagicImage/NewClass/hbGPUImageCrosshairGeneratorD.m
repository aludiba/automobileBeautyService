#import "hbGPUImageCrosshairGeneratorD.h"
@implementation hbGPUImageCrosshairGeneratorD
+ (BOOL)Minit:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)ERendercrosshairsfromarraykCounthFrametime:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)tRendertotexturewithverticesdTexturecoordinates:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)pSetcrosshairwidth:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)USetcrosshaircolorredEGreenuBlue:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
