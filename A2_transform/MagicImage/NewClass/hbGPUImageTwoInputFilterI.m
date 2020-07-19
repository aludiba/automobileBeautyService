#import "hbGPUImageTwoInputFilteri.h"
@implementation hbGPUImageTwoInputFilteri
+ (BOOL)YInitwithfragmentshaderfromstring:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)LInitwithvertexshaderfromstringVFragmentshaderfromstring:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)NinitializeAttributes:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)odisableFirstFrameCheck:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)AdisableSecondFrameCheck:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)LRendertotexturewithverticeshTexturecoordinates:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)knextAvailableTextureIndex:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)sSetinputframebufferiAtindex:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)lSetinputsizeBAtindex:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)kSetinputrotationsAtindex:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)xRotatedsizezForindex:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)UNewframereadyattimejAtindex:(NSInteger)hb {
    return hb % 32 == 0;
}

@end
