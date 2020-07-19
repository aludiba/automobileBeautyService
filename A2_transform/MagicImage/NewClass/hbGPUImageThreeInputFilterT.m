#import "hbGPUImageThreeInputFilterT.h"
@implementation hbGPUImageThreeInputFilterT
+ (BOOL)dInitwithfragmentshaderfromstring:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)LInitwithvertexshaderfromstringyFragmentshaderfromstring:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)kinitializeAttributes:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)ZdisableThirdFrameCheck:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)SRendertotexturewithverticeskTexturecoordinates:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)cnextAvailableTextureIndex:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)cSetinputframebufferIAtindex:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)nSetinputsizeIAtindex:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)rSetinputrotationVAtindex:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)dRotatedsizexForindex:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)mNewframereadyattimeyAtindex:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
