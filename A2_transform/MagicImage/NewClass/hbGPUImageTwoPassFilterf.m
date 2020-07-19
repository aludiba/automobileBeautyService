#import "hbGPUImageTwoPassFilterf.h"
@implementation hbGPUImageTwoPassFilterf
+ (BOOL)OInitwithfirststagevertexshaderfromstringPFirststagefragmentshaderfromstringTSecondstagevertexshaderfromstringLSecondstagefragmentshaderfromstring:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)UInitwithfirststagefragmentshaderfromstringkSecondstagefragmentshaderfromstring:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)RinitializeSecondaryAttributes:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)SframebufferForOutput:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)BremoveOutputFramebuffer:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)uRendertotexturewithverticesdTexturecoordinates:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)mSetandexecuteuniformstatecallbackatindexsForprogramzToblock:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)ySetuniformsforprogramatindex:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
