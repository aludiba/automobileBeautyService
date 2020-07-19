#import "GPUImageFilterGroup.h"
#import "GPUImageAdaptiveThresholdFilter.h"
#import "GPUImageFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageBoxBlurFilter.h"
#import "GPUImageAdaptiveThresholdFilter+Bm.h"
#import "GPUImageAdaptiveThresholdFilter+BmBm.h"

@interface GPUImageAdaptiveThresholdFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusInPixelsBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)blurRadiusInPixelsBmBm-Deletecomments:(NSInteger)-deleteComments;

@end
