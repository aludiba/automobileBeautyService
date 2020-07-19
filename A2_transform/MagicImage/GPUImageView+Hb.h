#import <UIKit/UIKit.h>
#import "GPUImageContext.h"
#import "GPUImageView.h"
#import <OpenGLES/EAGLDrawable.h>
#import <QuartzCore/QuartzCore.h>
#import "GPUImageContext.h"
#import "GPUImageFilter.h"
#import <AVFoundation/AVFoundation.h>

@interface GPUImageView (Hb)
+ (BOOL)layerClassHb:(NSInteger)hb;
+ (BOOL)initWithFrameHb:(NSInteger)hb;
+ (BOOL)initWithCoderHb:(NSInteger)hb;
+ (BOOL)commonInitHb:(NSInteger)hb;
+ (BOOL)layoutSubviewsHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)createDisplayFramebufferHb:(NSInteger)hb;
+ (BOOL)destroyDisplayFramebufferHb:(NSInteger)hb;
+ (BOOL)setDisplayFramebufferHb:(NSInteger)hb;
+ (BOOL)presentFramebufferHb:(NSInteger)hb;
+ (BOOL)recalculateViewGeometryHb:(NSInteger)hb;
+ (BOOL)setBackgroundColorRedGreenBlueAlphaHb:(NSInteger)hb;
+ (BOOL)textureCoordinatesForRotationHb:(NSInteger)hb;
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
+ (BOOL)sizeInPixelsHb:(NSInteger)hb;
+ (BOOL)setFillModeHb:(NSInteger)hb;

@end
