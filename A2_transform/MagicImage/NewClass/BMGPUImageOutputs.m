#import "BMGPUImageOutputs.h"
@implementation BMGPUImageOutputs
+ (BOOL)kinit:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)qdealloc:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)PSetinputframebufferfortargetPAtindex:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)FframebufferForOutput:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)DremoveOutputFramebuffer:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)ZnotifyTargetsAboutNewOutputTexture:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)dtargets:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)NAddtarget:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)WAddtargetIAttexturelocation:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)lRemovetarget:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)premoveAllTargets:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)HForceprocessingatsize:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)JForceprocessingatsizerespectingaspectratio:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)QuseNextFrameForImageCapture:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)ZnewCGImageFromCurrentlyProcessedOutput:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)YNewcgimagebyfilteringcgimage:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)HprovidesMonochromeOutput:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)NimageFromCurrentFramebuffer:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)qImagefromcurrentframebufferwithorientation:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)RImagebyfilteringimage:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)PNewcgimagebyfilteringimage:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)HimageFromCurrentFramebuffer:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)JImagefromcurrentframebufferwithorientation:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)RImagebyfilteringimage:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)pNewcgimagebyfilteringimage:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)CSetaudioencodingtarget:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)fSetoutputtextureoptions:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
