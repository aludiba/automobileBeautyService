#import "hbGPUImageTwoPassTextureSamplingFilterb.h"
@implementation hbGPUImageTwoPassTextureSamplingFilterb
+ (BOOL)TInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbmbmbm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)GSetuniformsforprogramatindexbmbmbm:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)vSetupfilterforsizebmbmbm:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)iSetverticaltexelspacingbmbmbm:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)xSethorizontaltexelspacingbmbmbm:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
