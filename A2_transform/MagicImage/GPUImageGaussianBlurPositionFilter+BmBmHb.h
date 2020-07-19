#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageGaussianBlurPositionFilter.h"
#import "GPUImageGaussianBlurPositionFilter+Bm.h"
#import "GPUImageGaussianBlurPositionFilter+BmBm.h"

@interface GPUImageGaussianBlurPositionFilter (BmBmHb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBmHb:(NSInteger)hb;
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)adjustAspectRatioBmBmHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeBmBmHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexBmBmHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurSizeBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurCenterBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusBmBmHb:(NSInteger)hb;
+ (BOOL)setAspectRatioBmBmHb:(NSInteger)hb;

@end
