#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import "GPUImageFramebuffer.h"
#import "GPUImageFramebufferCache.h"
#import "GPUImageContext.h"
#import "GPUImageOutput.h"
#import <UIKit/UIKit.h>

@interface GPUImageFramebufferCache (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)hashForSizeTextureoptionsOnlytextureBm:(NSInteger)BM;
+ (BOOL)fetchFramebufferForSizeTextureoptionsOnlytextureBm:(NSInteger)BM;
+ (BOOL)fetchFramebufferForSizeOnlytextureBm:(NSInteger)BM;
+ (BOOL)returnFramebufferToCacheBm:(NSInteger)BM;
+ (BOOL)purgeAllUnassignedFramebuffersBm:(NSInteger)BM;
+ (BOOL)addFramebufferToActiveImageCaptureListBm:(NSInteger)BM;
+ (BOOL)removeFramebufferFromActiveImageCaptureListBm:(NSInteger)BM;

@end
