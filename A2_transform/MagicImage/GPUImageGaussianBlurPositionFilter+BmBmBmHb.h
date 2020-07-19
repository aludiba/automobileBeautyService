#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageGaussianBlurPositionFilter.h"
#import "GPUImageGaussianBlurPositionFilter+Bm.h"
#import "GPUImageGaussianBlurPositionFilter+BmBm.h"
#import "GPUImageGaussianBlurPositionFilter+BmBmBm.h"

@interface GPUImageGaussianBlurPositionFilter (BmBmBmHb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBmBmHb:(NSInteger)hb;
+ (BOOL)initBmBmBmHb:(NSInteger)hb;
+ (BOOL)adjustAspectRatioBmBmBmHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeBmBmBmHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexBmBmBmHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexBmBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurSizeBmBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurCenterBmBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusBmBmBmHb:(NSInteger)hb;
+ (BOOL)setAspectRatioBmBmBmHb:(NSInteger)hb;

@end
