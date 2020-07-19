#import "hbGPUImageTextureOutputT.h"
@implementation hbGPUImageTextureOutputT
+ (BOOL)AInitbm:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)FDonewithtexturebm:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)UNewframereadyattimeatindexbm:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)XNextavailabletextureindexbm:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)USetinputframebufferatindexbm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)dSetinputrotationatindexbm:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)jSetinputsizeatindexbm:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)KMaximumoutputsizebm:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)HEndprocessingbm:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)MShouldignoreupdatestothistargetbm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)JWantsmonochromeinputbm:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)ZSetcurrentlyreceivingmonochromeinputbm:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
