#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageGaussianBlurPositionFilter.h"
#import "GPUImageGaussianBlurPositionFilter+Bm.h"
#import "GPUImageGaussianBlurPositionFilter+BmBm.h"

@interface GPUImageGaussianBlurPositionFilter (BmBmBm)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBmBm:(NSInteger)BM;
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)adjustAspectRatioBmBmBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeBmBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurSizeBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurCenterBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusBmBmBm:(NSInteger)BM;
+ (BOOL)setAspectRatioBmBmBm:(NSInteger)BM;

@end
