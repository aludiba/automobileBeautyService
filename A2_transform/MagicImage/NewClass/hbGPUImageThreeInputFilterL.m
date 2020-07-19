#import "hbGPUImageThreeInputFilterL.h"
@implementation hbGPUImageThreeInputFilterL
+ (BOOL)VInitwithfragmentshaderfromstringbm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)WInitwithvertexshaderfromstringfragmentshaderfromstringbm:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)dInitializeattributesbm:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)hDisablethirdframecheckbm:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)sRendertotexturewithverticestexturecoordinatesbm:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)fNextavailabletextureindexbm:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)SSetinputframebufferatindexbm:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)cSetinputsizeatindexbm:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)ESetinputrotationatindexbm:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)tRotatedsizeforindexbm:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)QNewframereadyattimeatindexbm:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
