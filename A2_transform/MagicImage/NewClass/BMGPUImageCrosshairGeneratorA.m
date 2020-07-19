#import "BMGPUImageCrosshairGeneratorA.h"
@implementation BMGPUImageCrosshairGeneratorA
+ (BOOL)cinit:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)URendercrosshairsfromarrayoCountbFrametime:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)MRendertotexturewithverticesJTexturecoordinates:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)xSetcrosshairwidth:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)rSetcrosshaircolorredkGreenUBlue:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
