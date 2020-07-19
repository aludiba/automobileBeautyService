#import <Foundation/Foundation.h>
#import "GPUImageContext.h"
#import "GPUImageTextureOutput.h"

@interface GPUImageTextureOutput (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)doneWithTextureHb:(NSInteger)hb;
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

@end
