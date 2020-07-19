#import "hbGPUImageTwoPassTextureSamplingFilterM.h"
@implementation hbGPUImageTwoPassTextureSamplingFilterM
+ (BOOL)hInitwithfirststagevertexshaderfromstringRFirststagefragmentshaderfromstringFSecondstagevertexshaderfromstringgSecondstagefragmentshaderfromstring:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)mSetuniformsforprogramatindex:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)hSetupfilterforsize:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)VSetverticaltexelspacing:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)uSethorizontaltexelspacing:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
