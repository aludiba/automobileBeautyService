#import "BMBMGPUImageCrosshairGeneratorAQ.h"
@implementation BMBMGPUImageCrosshairGeneratorAQ
+ (BOOL)wCinit:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)hUrendercrosshairsfromarrayocountbframetime:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)SMrendertotexturewithverticesjtexturecoordinates:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)vXsetcrosshairwidth:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)QRsetcrosshaircolorredkgreenublue:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
