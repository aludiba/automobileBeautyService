#import <Foundation/Foundation.h>
@interface BMGPUImageOutputs: NSObject
+ (BOOL)kinit:(NSInteger)BM;
+ (BOOL)qdealloc:(NSInteger)BM;
+ (BOOL)PSetinputframebufferfortargetPAtindex:(NSInteger)BM;
+ (BOOL)FframebufferForOutput:(NSInteger)BM;
+ (BOOL)DremoveOutputFramebuffer:(NSInteger)BM;
+ (BOOL)ZnotifyTargetsAboutNewOutputTexture:(NSInteger)BM;
+ (BOOL)dtargets:(NSInteger)BM;
+ (BOOL)NAddtarget:(NSInteger)BM;
+ (BOOL)WAddtargetIAttexturelocation:(NSInteger)BM;
+ (BOOL)lRemovetarget:(NSInteger)BM;
+ (BOOL)premoveAllTargets:(NSInteger)BM;
+ (BOOL)HForceprocessingatsize:(NSInteger)BM;
+ (BOOL)JForceprocessingatsizerespectingaspectratio:(NSInteger)BM;
+ (BOOL)QuseNextFrameForImageCapture:(NSInteger)BM;
+ (BOOL)ZnewCGImageFromCurrentlyProcessedOutput:(NSInteger)BM;
+ (BOOL)YNewcgimagebyfilteringcgimage:(NSInteger)BM;
+ (BOOL)HprovidesMonochromeOutput:(NSInteger)BM;
+ (BOOL)NimageFromCurrentFramebuffer:(NSInteger)BM;
+ (BOOL)qImagefromcurrentframebufferwithorientation:(NSInteger)BM;
+ (BOOL)RImagebyfilteringimage:(NSInteger)BM;
+ (BOOL)PNewcgimagebyfilteringimage:(NSInteger)BM;
+ (BOOL)HimageFromCurrentFramebuffer:(NSInteger)BM;
+ (BOOL)JImagefromcurrentframebufferwithorientation:(NSInteger)BM;
+ (BOOL)RImagebyfilteringimage:(NSInteger)BM;
+ (BOOL)pNewcgimagebyfilteringimage:(NSInteger)BM;
+ (BOOL)CSetaudioencodingtarget:(NSInteger)BM;
+ (BOOL)fSetoutputtextureoptions:(NSInteger)BM;

@end
