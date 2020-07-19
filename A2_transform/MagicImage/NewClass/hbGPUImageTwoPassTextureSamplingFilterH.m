#import "hbGPUImageTwoPassTextureSamplingFilterH.h"
@implementation hbGPUImageTwoPassTextureSamplingFilterH
+ (BOOL)gInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbm:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)pSetuniformsforprogramatindexbm:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)GSetupfilterforsizebm:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)KSetverticaltexelspacingbm:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)eSethorizontaltexelspacingbm:(NSInteger)hb {
    return hb % 22 == 0;
}

@end
