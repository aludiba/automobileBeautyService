#import "GPUImageFilterGroup.h"
#import "GPUImageFASTCornerDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageNonMaximumSuppressionFilter.h"

@interface GPUImageFASTCornerDetectionFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithFASTDetectorVariant-Deletecomments:(NSInteger)-deleteComments;

@end
