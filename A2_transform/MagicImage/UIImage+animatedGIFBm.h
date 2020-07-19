#import <UIKit/UIKit.h>
#import "UIImage+animatedGIF.h"
#import <ImageIO/ImageIO.h>

@interface UIImage (animatedGIFBm)
+ (BOOL)animatedImageWithAnimatedGIFDataBm:(NSInteger)BM;
+ (BOOL)animatedImageWithAnimatedGIFURLBm:(NSInteger)BM;

@end
