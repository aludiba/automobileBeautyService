#import "BMGPUImageTwoInputFilterU.h"
@implementation BMGPUImageTwoInputFilterU
+ (BOOL)pInitwithfragmentshaderfromstring:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)pInitwithvertexshaderfromstringlFragmentshaderfromstring:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)einitializeAttributes:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)RdisableFirstFrameCheck:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)MdisableSecondFrameCheck:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)jRendertotexturewithverticesTTexturecoordinates:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)XnextAvailableTextureIndex:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)fSetinputframebuffercAtindex:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)uSetinputsizeDAtindex:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)fSetinputrotationQAtindex:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)NRotatedsizeFForindex:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)NNewframereadyattimezAtindex:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
