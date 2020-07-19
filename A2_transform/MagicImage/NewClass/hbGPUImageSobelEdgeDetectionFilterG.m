#import "hbGPUImageSobelEdgeDetectionFilterG.h"
@implementation hbGPUImageSobelEdgeDetectionFilterG
+ (BOOL)Dinit:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)OInitwithfragmentshaderfromstring:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)rSetupfilterforsize:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)oSetuniformsforprogramatindex:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)UwantsMonochromeInput:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)FprovidesMonochromeOutput:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)FSettexelwidth:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)nSettexelheight:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)jSetedgestrength:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
