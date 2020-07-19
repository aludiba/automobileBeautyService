#import "GPUImageFilterGroup.h"
#import "GPUImageUnsharpMaskFilter.h"
#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageUnsharpMaskFilter+Bm.h"
#import "GPUImageUnsharpMaskFilter+BmBm.h"
#import "GPUImageUnsharpMaskFilter+BmBmBm.h"

@interface GPUImageUnsharpMaskFilter (BmBmBm-Deletecomments)
+ (BOOL)initBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusInPixelsBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)blurRadiusInPixelsBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setIntensityBmBmBm-Deletecomments:(NSInteger)-deleteComments;

@end
