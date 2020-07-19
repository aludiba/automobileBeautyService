#import "GPUImageOutput.h"
#import "GPUImageFilter.h"
#import "GPUImageFilterGroup.h"
#import "GPUImagePicture.h"
#import "GPUImageFilterGroup+Bm.h"

@interface GPUImageFilterGroup (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)addFilterBmHb:(NSInteger)hb;
+ (BOOL)filterAtIndexBmHb:(NSInteger)hb;
+ (BOOL)filterCountBmHb:(NSInteger)hb;
+ (BOOL)useNextFrameForImageCaptureBmHb:(NSInteger)hb;
+ (BOOL)newCGImageFromCurrentlyProcessedOutputBmHb:(NSInteger)hb;
+ (BOOL)setTargetToIgnoreForUpdatesBmHb:(NSInteger)hb;
+ (BOOL)addTargetAttexturelocationBmHb:(NSInteger)hb;
+ (BOOL)removeTargetBmHb:(NSInteger)hb;
+ (BOOL)removeAllTargetsBmHb:(NSInteger)hb;
+ (BOOL)targetsBmHb:(NSInteger)hb;
+ (BOOL)setFrameProcessingCompletionBlockBmHb:(NSInteger)hb;
+ (BOOL)frameProcessingCompletionBlockBmHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexBmHb:(NSInteger)hb;
+ (BOOL)setInputFramebufferAtindexBmHb:(NSInteger)hb;
+ (BOOL)nextAvailableTextureIndexBmHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexBmHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexBmHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeBmHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeRespectingAspectRatioBmHb:(NSInteger)hb;
+ (BOOL)maximumOutputSizeBmHb:(NSInteger)hb;
+ (BOOL)endProcessingBmHb:(NSInteger)hb;
+ (BOOL)wantsMonochromeInputBmHb:(NSInteger)hb;
+ (BOOL)setCurrentlyReceivingMonochromeInputBmHb:(NSInteger)hb;

@end
