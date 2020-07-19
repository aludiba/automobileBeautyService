#import "GPUImageFilterGroup.h"
#import "GPUImageGaussianSelectiveBlurFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageTwoInputFilter.h"

@interface GPUImageGaussianSelectiveBlurFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setInputSizeAtindex-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusInPixels-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)blurRadiusInPixels-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setExcludeCirclePoint-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setExcludeCircleRadius-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setExcludeBlurSize-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setAspectRatio-Deletecomments:(NSInteger)-deleteComments;

@end
