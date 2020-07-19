#import <Foundation/Foundation.h>
#import "GPUImageContext.h"
#import "GPUImageTextureOutput.h"

@interface GPUImageTextureOutput (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)doneWithTextureBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM;
+ (BOOL)nextAvailableTextureIndexBm:(NSInteger)BM;
+ (BOOL)setInputFramebufferAtindexBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM;
+ (BOOL)maximumOutputSizeBm:(NSInteger)BM;
+ (BOOL)endProcessingBm:(NSInteger)BM;
+ (BOOL)shouldIgnoreUpdatesToThisTargetBm:(NSInteger)BM;
+ (BOOL)wantsMonochromeInputBm:(NSInteger)BM;
+ (BOOL)setCurrentlyReceivingMonochromeInputBm:(NSInteger)BM;

@end
