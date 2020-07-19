#import "hbGPUImageTextureOutputb.h"
@implementation hbGPUImageTextureOutputb
+ (BOOL)finit:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)QdoneWithTexture:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)ANewframereadyattimeWAtindex:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)qnextAvailableTextureIndex:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)USetinputframebuffertAtindex:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)dSetinputrotationMAtindex:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)aSetinputsizeBAtindex:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)JmaximumOutputSize:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)qendProcessing:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)BshouldIgnoreUpdatesToThisTarget:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)iwantsMonochromeInput:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)ySetcurrentlyreceivingmonochromeinput:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
