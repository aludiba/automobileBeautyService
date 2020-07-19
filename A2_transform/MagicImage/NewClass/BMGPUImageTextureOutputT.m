#import "BMGPUImageTextureOutputT.h"
@implementation BMGPUImageTextureOutputT
+ (BOOL)Jinit:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)tdoneWithTexture:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)RNewframereadyattimeJAtindex:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)BnextAvailableTextureIndex:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)wSetinputframebufferJAtindex:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)bSetinputrotationYAtindex:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)rSetinputsizeAAtindex:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)OmaximumOutputSize:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)vendProcessing:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)jshouldIgnoreUpdatesToThisTarget:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)JwantsMonochromeInput:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)TSetcurrentlyreceivingmonochromeinput:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
