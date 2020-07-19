#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageGaussianBlurPositionFilter.h"

@interface GPUImageGaussianBlurPositionFilter (Bm)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)adjustAspectRatioBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM;
+ (BOOL)setBlurSizeBm:(NSInteger)BM;
+ (BOOL)setBlurCenterBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusBm:(NSInteger)BM;
+ (BOOL)setAspectRatioBm:(NSInteger)BM;

@end
