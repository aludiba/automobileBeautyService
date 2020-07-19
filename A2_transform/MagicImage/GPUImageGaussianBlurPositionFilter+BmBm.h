#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageGaussianBlurPositionFilter.h"
#import "GPUImageGaussianBlurPositionFilter+Bm.h"

@interface GPUImageGaussianBlurPositionFilter (BmBm)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)adjustAspectRatioBmBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM;
+ (BOOL)setBlurSizeBmBm:(NSInteger)BM;
+ (BOOL)setBlurCenterBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusBmBm:(NSInteger)BM;
+ (BOOL)setAspectRatioBmBm:(NSInteger)BM;

@end
