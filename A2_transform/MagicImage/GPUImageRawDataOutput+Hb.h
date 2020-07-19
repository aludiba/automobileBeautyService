#import <Foundation/Foundation.h>
#import "GPUImageContext.h"
#import "GPUImageRawDataOutput.h"
#import "GPUImageContext.h"
#import "GLProgram.h"
#import "GPUImageFilter.h"
#import "GPUImageMovieWriter.h"

@interface GPUImageRawDataOutput (Hb)
+ (BOOL)initWithImageSizeResultsinbgraformatHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)renderAtInternalSizeHb:(NSInteger)hb;
+ (BOOL)colorAtLocationHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb;
+ (BOOL)nextAvailableTextureIndexHb:(NSInteger)hb;
+ (BOOL)setInputFramebufferAtindexHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb;
+ (BOOL)maximumOutputSizeHb:(NSInteger)hb;
+ (BOOL)endProcessingHb:(NSInteger)hb;
+ (BOOL)shouldIgnoreUpdatesToThisTargetHb:(NSInteger)hb;
+ (BOOL)wantsMonochromeInputHb:(NSInteger)hb;
+ (BOOL)setCurrentlyReceivingMonochromeInputHb:(NSInteger)hb;
+ (BOOL)rawBytesForImageHb:(NSInteger)hb;
+ (BOOL)bytesPerRowInOutputHb:(NSInteger)hb;
+ (BOOL)setImageSizeHb:(NSInteger)hb;
+ (BOOL)lockFramebufferForReadingHb:(NSInteger)hb;
+ (BOOL)unlockFramebufferAfterReadingHb:(NSInteger)hb;

@end
