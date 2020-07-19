#import <UIKit/UIKit.h>
#import "GPUImageContext.h"
#import "GPUImageView.h"
#import <OpenGLES/EAGLDrawable.h>
#import <QuartzCore/QuartzCore.h>
#import "GPUImageContext.h"
#import "GPUImageFilter.h"
#import <AVFoundation/AVFoundation.h>

@interface GPUImageView (Bm)
+ (BOOL)layerClassBm:(NSInteger)BM;
+ (BOOL)initWithFrameBm:(NSInteger)BM;
+ (BOOL)initWithCoderBm:(NSInteger)BM;
+ (BOOL)commonInitBm:(NSInteger)BM;
+ (BOOL)layoutSubviewsBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)createDisplayFramebufferBm:(NSInteger)BM;
+ (BOOL)destroyDisplayFramebufferBm:(NSInteger)BM;
+ (BOOL)setDisplayFramebufferBm:(NSInteger)BM;
+ (BOOL)presentFramebufferBm:(NSInteger)BM;
+ (BOOL)recalculateViewGeometryBm:(NSInteger)BM;
+ (BOOL)setBackgroundColorRedGreenBlueAlphaBm:(NSInteger)BM;
+ (BOOL)textureCoordinatesForRotationBm:(NSInteger)BM;
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
+ (BOOL)sizeInPixelsBm:(NSInteger)BM;
+ (BOOL)setFillModeBm:(NSInteger)BM;

@end
