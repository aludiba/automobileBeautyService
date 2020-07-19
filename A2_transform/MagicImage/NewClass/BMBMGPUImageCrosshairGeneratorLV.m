#import "BMBMGPUImageCrosshairGeneratorLV.h"
@implementation BMBMGPUImageCrosshairGeneratorLV
+ (BOOL)IAinitbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)pYrendercrosshairsfromarraylcountuframetimebm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)HPrendertotexturewithverticesxtexturecoordinatesbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)rFsetcrosshairwidthbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)sPsetcrosshaircolorredxgreennbluebm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
