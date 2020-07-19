#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageGaussianBlurPositionFilter.h"
#import "GPUImageGaussianBlurPositionFilter+Bm.h"
#import "GPUImageGaussianBlurPositionFilter+BmBm.h"
#import "GPUImageGaussianBlurPositionFilter+BmBmBm.h"

@interface GPUImageGaussianBlurPositionFilter (BmBmBm-Deletecomments)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)adjustAspectRatioBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)forceProcessingAtSizeBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setInputSizeAtindexBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setInputRotationAtindexBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurSizeBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurCenterBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setAspectRatioBmBmBm-Deletecomments:(NSInteger)-deleteComments;

@end
