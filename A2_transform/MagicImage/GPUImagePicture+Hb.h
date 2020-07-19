#import <UIKit/UIKit.h>
#import "GPUImageOutput.h"
#import "GPUImagePicture.h"

@interface GPUImagePicture (Hb)
+ (BOOL)initWithURLHb:(NSInteger)hb;
+ (BOOL)initWithDataHb:(NSInteger)hb;
+ (BOOL)initWithImageHb:(NSInteger)hb;
+ (BOOL)initWithCGImageHb:(NSInteger)hb;
+ (BOOL)initWithImageSmoothlyscaleoutputHb:(NSInteger)hb;
+ (BOOL)initWithCGImageSmoothlyscaleoutputHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)removeAllTargetsHb:(NSInteger)hb;
+ (BOOL)processImageHb:(NSInteger)hb;
+ (BOOL)processImageWithCompletionHandlerHb:(NSInteger)hb;
+ (BOOL)processImageUpToFilterWithcompletionhandlerHb:(NSInteger)hb;
+ (BOOL)outputImageSizeHb:(NSInteger)hb;
+ (BOOL)addTargetAttexturelocationHb:(NSInteger)hb;

@end
