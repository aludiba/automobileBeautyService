#import "GPUImageOutput.h"
#import "GPUImageFilter.h"
#import "GPUImageFilterGroup.h"
#import "GPUImagePicture.h"

@interface GPUImageFilterGroup (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)addFilterHb:(NSInteger)hb;
+ (BOOL)filterAtIndexHb:(NSInteger)hb;
+ (BOOL)filterCountHb:(NSInteger)hb;
+ (BOOL)useNextFrameForImageCaptureHb:(NSInteger)hb;
+ (BOOL)newCGImageFromCurrentlyProcessedOutputHb:(NSInteger)hb;
+ (BOOL)setTargetToIgnoreForUpdatesHb:(NSInteger)hb;
+ (BOOL)addTargetAttexturelocationHb:(NSInteger)hb;
+ (BOOL)removeTargetHb:(NSInteger)hb;
+ (BOOL)removeAllTargetsHb:(NSInteger)hb;
+ (BOOL)targetsHb:(NSInteger)hb;
+ (BOOL)setFrameProcessingCompletionBlockHb:(NSInteger)hb;
+ (BOOL)(GPUImageOutput *, CMTime))frameProcessingCompletionBlockHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb;
+ (BOOL)setInputFramebufferAtindexHb:(NSInteger)hb;
+ (BOOL)nextAvailableTextureIndexHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeRespectingAspectRatioHb:(NSInteger)hb;
+ (BOOL)maximumOutputSizeHb:(NSInteger)hb;
+ (BOOL)endProcessingHb:(NSInteger)hb;
+ (BOOL)wantsMonochromeInputHb:(NSInteger)hb;
+ (BOOL)setCurrentlyReceivingMonochromeInputHb:(NSInteger)hb;

@end
