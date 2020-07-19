#import "hbGPUImageSobelEdgeDetectionFilterN.h"
@implementation hbGPUImageSobelEdgeDetectionFilterN
+ (BOOL)Ainit:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)rInitwithfragmentshaderfromstring:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)QSetupfilterforsize:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)KSetuniformsforprogramatindex:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)swantsMonochromeInput:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)xprovidesMonochromeOutput:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)nSettexelwidth:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)oSettexelheight:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)zSetedgestrength:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
