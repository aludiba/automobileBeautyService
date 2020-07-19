#import "GPUImageFilterGroup.h"
#import "GPUImageTiltShiftFilter.h"
#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGaussianBlurFilter.h"

@interface GPUImageTiltShiftFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusInPixels-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)blurRadiusInPixels-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setTopFocusLevel-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBottomFocusLevel-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setFocusFallOffRate-Deletecomments:(NSInteger)-deleteComments;

@end
