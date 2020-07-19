#import "BMGPUImageThreeInputFilterC.h"
@implementation BMGPUImageThreeInputFilterC
+ (BOOL)tInitwithfragmentshaderfromstring:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)AInitwithvertexshaderfromstringAFragmentshaderfromstring:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)ginitializeAttributes:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)sdisableThirdFrameCheck:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)kRendertotexturewithverticesfTexturecoordinates:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)FnextAvailableTextureIndex:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)iSetinputframebufferrAtindex:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)vSetinputsizeSAtindex:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)oSetinputrotationrAtindex:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)zRotatedsizeLForindex:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)ZNewframereadyattimeoAtindex:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
