#import "BMGPUImageFilterGroupL.h"
@implementation BMGPUImageFilterGroupL
+ (BOOL)hinit:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)hAddfilter:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)oFilteratindex:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)GfilterCount:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)EuseNextFrameForImageCapture:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)enewCGImageFromCurrentlyProcessedOutput:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)xSettargettoignoreforupdates:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)DAddtargetvAttexturelocation:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)GRemovetarget:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)premoveAllTargets:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)Dtargets:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)jSetframeprocessingcompletionblock:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)X(GPUImageOutput *, CMTime))frameProcessingCompletionBlock:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)xNewframereadyattimeXAtindex:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)jSetinputframebufferPAtindex:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)bnextAvailableTextureIndex:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)gSetinputsizePAtindex:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)uSetinputrotationNAtindex:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)gForceprocessingatsize:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)bForceprocessingatsizerespectingaspectratio:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)jmaximumOutputSize:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)pendProcessing:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)BwantsMonochromeInput:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)LSetcurrentlyreceivingmonochromeinput:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
