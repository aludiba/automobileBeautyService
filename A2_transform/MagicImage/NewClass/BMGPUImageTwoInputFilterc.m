#import "BMGPUImageTwoInputFilterc.h"
@implementation BMGPUImageTwoInputFilterc
+ (BOOL)OInitwithfragmentshaderfromstring:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)iInitwithvertexshaderfromstringmFragmentshaderfromstring:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)winitializeAttributes:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)TdisableFirstFrameCheck:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)ldisableSecondFrameCheck:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)gRendertotexturewithverticespTexturecoordinates:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)knextAvailableTextureIndex:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)TSetinputframebufferrAtindex:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)gSetinputsizemAtindex:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)RSetinputrotationiAtindex:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)oRotatedsizeRForindex:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)nNewframereadyattimevAtindex:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
