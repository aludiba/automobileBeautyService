#import <Foundation/Foundation.h>
#import "GPUImageContext.h"
#import "GPUImageRawDataOutput.h"
#import "GPUImageContext.h"
#import "GLProgram.h"
#import "GPUImageFilter.h"
#import "GPUImageMovieWriter.h"

@interface GPUImageRawDataOutput (Bm)
+ (BOOL)initWithImageSizeResultsinbgraformatBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)renderAtInternalSizeBm:(NSInteger)BM;
+ (BOOL)colorAtLocationBm:(NSInteger)BM;
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
+ (BOOL)rawBytesForImageBm:(NSInteger)BM;
+ (BOOL)bytesPerRowInOutputBm:(NSInteger)BM;
+ (BOOL)setImageSizeBm:(NSInteger)BM;
+ (BOOL)lockFramebufferForReadingBm:(NSInteger)BM;
+ (BOOL)unlockFramebufferAfterReadingBm:(NSInteger)BM;

@end
