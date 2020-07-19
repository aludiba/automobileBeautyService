#import <Foundation/Foundation.h>
@interface hbGPUImageOutputh: NSObject
+ (BOOL)Cinit:(NSInteger)hb;
+ (BOOL)Cdealloc:(NSInteger)hb;
+ (BOOL)sSetinputframebufferfortargetzAtindex:(NSInteger)hb;
+ (BOOL)yframebufferForOutput:(NSInteger)hb;
+ (BOOL)PremoveOutputFramebuffer:(NSInteger)hb;
+ (BOOL)tnotifyTargetsAboutNewOutputTexture:(NSInteger)hb;
+ (BOOL)Ftargets:(NSInteger)hb;
+ (BOOL)pAddtarget:(NSInteger)hb;
+ (BOOL)BAddtargetnAttexturelocation:(NSInteger)hb;
+ (BOOL)RRemovetarget:(NSInteger)hb;
+ (BOOL)LremoveAllTargets:(NSInteger)hb;
+ (BOOL)FForceprocessingatsize:(NSInteger)hb;
+ (BOOL)RForceprocessingatsizerespectingaspectratio:(NSInteger)hb;
+ (BOOL)xuseNextFrameForImageCapture:(NSInteger)hb;
+ (BOOL)hnewCGImageFromCurrentlyProcessedOutput:(NSInteger)hb;
+ (BOOL)UNewcgimagebyfilteringcgimage:(NSInteger)hb;
+ (BOOL)sprovidesMonochromeOutput:(NSInteger)hb;
+ (BOOL)bimageFromCurrentFramebuffer:(NSInteger)hb;
+ (BOOL)mImagefromcurrentframebufferwithorientation:(NSInteger)hb;
+ (BOOL)CImagebyfilteringimage:(NSInteger)hb;
+ (BOOL)FNewcgimagebyfilteringimage:(NSInteger)hb;
+ (BOOL)FimageFromCurrentFramebuffer:(NSInteger)hb;
+ (BOOL)LImagefromcurrentframebufferwithorientation:(NSInteger)hb;
+ (BOOL)tImagebyfilteringimage:(NSInteger)hb;
+ (BOOL)gNewcgimagebyfilteringimage:(NSInteger)hb;
+ (BOOL)uSetaudioencodingtarget:(NSInteger)hb;
+ (BOOL)SSetoutputtextureoptions:(NSInteger)hb;

@end
