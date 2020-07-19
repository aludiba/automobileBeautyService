#import "hbGPUImageTwoPassTextureSamplingFilterS.h"
@implementation hbGPUImageTwoPassTextureSamplingFilterS
+ (BOOL)rInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbmbmbm:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)uSetuniformsforprogramatindexbmbmbm:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)xSetupfilterforsizebmbmbm:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)uSetverticaltexelspacingbmbmbm:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)pSethorizontaltexelspacingbmbmbm:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
