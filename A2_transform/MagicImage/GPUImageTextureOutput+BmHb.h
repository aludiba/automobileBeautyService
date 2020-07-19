#import <Foundation/Foundation.h>
#import "GPUImageContext.h"
#import "GPUImageTextureOutput.h"
#import "GPUImageTextureOutput+Bm.h"

@interface GPUImageTextureOutput (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)doneWithTextureBmHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexBmHb:(NSInteger)hb;
+ (BOOL)nextAvailableTextureIndexBmHb:(NSInteger)hb;
+ (BOOL)setInputFramebufferAtindexBmHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexBmHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexBmHb:(NSInteger)hb;
+ (BOOL)maximumOutputSizeBmHb:(NSInteger)hb;
+ (BOOL)endProcessingBmHb:(NSInteger)hb;
+ (BOOL)shouldIgnoreUpdatesToThisTargetBmHb:(NSInteger)hb;
+ (BOOL)wantsMonochromeInputBmHb:(NSInteger)hb;
+ (BOOL)setCurrentlyReceivingMonochromeInputBmHb:(NSInteger)hb;

@end
