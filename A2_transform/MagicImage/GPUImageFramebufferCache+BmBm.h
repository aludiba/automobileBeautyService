#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import "GPUImageFramebuffer.h"
#import "GPUImageFramebufferCache.h"
#import "GPUImageContext.h"
#import "GPUImageOutput.h"
#import <UIKit/UIKit.h>
#import "GPUImageFramebufferCache+Bm.h"

@interface GPUImageFramebufferCache (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)hashForSizeTextureoptionsOnlytextureBmBm:(NSInteger)BM;
+ (BOOL)fetchFramebufferForSizeTextureoptionsOnlytextureBmBm:(NSInteger)BM;
+ (BOOL)fetchFramebufferForSizeOnlytextureBmBm:(NSInteger)BM;
+ (BOOL)returnFramebufferToCacheBmBm:(NSInteger)BM;
+ (BOOL)purgeAllUnassignedFramebuffersBmBm:(NSInteger)BM;
+ (BOOL)addFramebufferToActiveImageCaptureListBmBm:(NSInteger)BM;
+ (BOOL)removeFramebufferFromActiveImageCaptureListBmBm:(NSInteger)BM;

@end
