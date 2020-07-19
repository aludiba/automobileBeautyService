#import "hbGPUImageTwoPassTextureSamplingFilterp.h"
@implementation hbGPUImageTwoPassTextureSamplingFilterp
+ (BOOL)oInitwithfirststagevertexshaderfromstringLFirststagefragmentshaderfromstringUSecondstagevertexshaderfromstringVSecondstagefragmentshaderfromstring:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)YSetuniformsforprogramatindex:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)pSetupfilterforsize:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)wSetverticaltexelspacing:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)CSethorizontaltexelspacing:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
