#import "GPUImageOutput.h"
#import "GPUImageFilter.h"
#import "GPUImageFilterGroup.h"
#import "GPUImagePicture.h"

@interface GPUImageFilterGroup (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)addFilterBm:(NSInteger)BM;
+ (BOOL)filterAtIndexBm:(NSInteger)BM;
+ (BOOL)filterCountBm:(NSInteger)BM;
+ (BOOL)useNextFrameForImageCaptureBm:(NSInteger)BM;
+ (BOOL)newCGImageFromCurrentlyProcessedOutputBm:(NSInteger)BM;
+ (BOOL)setTargetToIgnoreForUpdatesBm:(NSInteger)BM;
+ (BOOL)addTargetAttexturelocationBm:(NSInteger)BM;
+ (BOOL)removeTargetBm:(NSInteger)BM;
+ (BOOL)removeAllTargetsBm:(NSInteger)BM;
+ (BOOL)targetsBm:(NSInteger)BM;
+ (BOOL)setFrameProcessingCompletionBlockBm:(NSInteger)BM;
+ (BOOL)(GPUImageOutput *, CMTime))frameProcessingCompletionBlockBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM;
+ (BOOL)setInputFramebufferAtindexBm:(NSInteger)BM;
+ (BOOL)nextAvailableTextureIndexBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeRespectingAspectRatioBm:(NSInteger)BM;
+ (BOOL)maximumOutputSizeBm:(NSInteger)BM;
+ (BOOL)endProcessingBm:(NSInteger)BM;
+ (BOOL)wantsMonochromeInputBm:(NSInteger)BM;
+ (BOOL)setCurrentlyReceivingMonochromeInputBm:(NSInteger)BM;

@end
