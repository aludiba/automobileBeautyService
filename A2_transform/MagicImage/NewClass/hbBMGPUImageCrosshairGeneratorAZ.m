#import "hbBMGPUImageCrosshairGeneratorAZ.h"
@implementation hbBMGPUImageCrosshairGeneratorAZ
+ (BOOL)ECinitbm:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)IUrendercrosshairsfromarrayocountbframetimebm:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)oMrendertotexturewithverticesjtexturecoordinatesbm:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)oXsetcrosshairwidthbm:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)cRsetcrosshaircolorredkgreenubluebm:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
