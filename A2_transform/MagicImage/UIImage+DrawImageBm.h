#import <UIKit/UIKit.h>
#import "UIImage+DrawImage.h"
#import <QuartzCore/QuartzCore.h>
#import "CGAffineTransformFun.h"

@interface UIImage (DrawImageBm)
+ (BOOL)imageWithSubImageFrameBm:(NSInteger)BM;
+ (BOOL)imageMosaicWithSubImageFrameBm:(NSInteger)BM;
+ (BOOL)imageWithTransformDrawmodeBm:(NSInteger)BM;

@end
