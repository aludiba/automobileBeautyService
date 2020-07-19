#import <UIKit/UIKit.h>
#import "GPUImageOutput.h"
#import "GPUImagePicture.h"
#import "GPUImagePicture+Hb.h"

@interface GPUImagePicture (HbHb)
+ (BOOL)initWithURLHbHb:(NSInteger)hb;
+ (BOOL)initWithDataHbHb:(NSInteger)hb;
+ (BOOL)initWithImageHbHb:(NSInteger)hb;
+ (BOOL)initWithCGImageHbHb:(NSInteger)hb;
+ (BOOL)initWithImageSmoothlyscaleoutputHbHb:(NSInteger)hb;
+ (BOOL)initWithCGImageSmoothlyscaleoutputHbHb:(NSInteger)hb;
+ (BOOL)deallocHbHb:(NSInteger)hb;
+ (BOOL)removeAllTargetsHbHb:(NSInteger)hb;
+ (BOOL)processImageHbHb:(NSInteger)hb;
+ (BOOL)processImageWithCompletionHandlerHbHb:(NSInteger)hb;
+ (BOOL)processImageUpToFilterWithcompletionhandlerHbHb:(NSInteger)hb;
+ (BOOL)outputImageSizeHbHb:(NSInteger)hb;
+ (BOOL)addTargetAttexturelocationHbHb:(NSInteger)hb;

@end
