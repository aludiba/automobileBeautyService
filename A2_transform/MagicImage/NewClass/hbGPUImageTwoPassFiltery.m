#import "hbGPUImageTwoPassFiltery.h"
@implementation hbGPUImageTwoPassFiltery
+ (BOOL)dInitwithfirststagevertexshaderfromstringQFirststagefragmentshaderfromstringkSecondstagevertexshaderfromstringtSecondstagefragmentshaderfromstring:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)KInitwithfirststagefragmentshaderfromstringCSecondstagefragmentshaderfromstring:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)MinitializeSecondaryAttributes:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)xframebufferForOutput:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)yremoveOutputFramebuffer:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)QRendertotexturewithverticesmTexturecoordinates:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)tSetandexecuteuniformstatecallbackatindexqForprogramiToblock:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)ySetuniformsforprogramatindex:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
