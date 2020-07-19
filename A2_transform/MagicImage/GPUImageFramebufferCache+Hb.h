#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import "GPUImageFramebuffer.h"
#import "GPUImageFramebufferCache.h"
#import "GPUImageContext.h"
#import "GPUImageOutput.h"
#import <UIKit/UIKit.h>

@interface GPUImageFramebufferCache (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)hashForSizeTextureoptionsOnlytextureHb:(NSInteger)hb;
+ (BOOL)fetchFramebufferForSizeTextureoptionsOnlytextureHb:(NSInteger)hb;
+ (BOOL)fetchFramebufferForSizeOnlytextureHb:(NSInteger)hb;
+ (BOOL)returnFramebufferToCacheHb:(NSInteger)hb;
+ (BOOL)purgeAllUnassignedFramebuffersHb:(NSInteger)hb;
+ (BOOL)addFramebufferToActiveImageCaptureListHb:(NSInteger)hb;
+ (BOOL)removeFramebufferFromActiveImageCaptureListHb:(NSInteger)hb;

@end
