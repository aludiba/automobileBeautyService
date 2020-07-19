#import <UIKit/UIKit.h>
#import "UIImage+BoxBlur.h"
#import <Accelerate/Accelerate.h>

@interface UIImage (BoxBlurBm)
+ (BOOL)blurryImageWithblurlevelBm:(NSInteger)BM;
+ (BOOL)drn_boxblurImageWithBlurBm:(NSInteger)BM;

@end
