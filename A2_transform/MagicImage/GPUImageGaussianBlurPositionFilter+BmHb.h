#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageGaussianBlurPositionFilter.h"
#import "GPUImageGaussianBlurPositionFilter+Bm.h"

@interface GPUImageGaussianBlurPositionFilter (BmHb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmHb:(NSInteger)hb;
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)adjustAspectRatioBmHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeBmHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexBmHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexBmHb:(NSInteger)hb;
+ (BOOL)setBlurSizeBmHb:(NSInteger)hb;
+ (BOOL)setBlurCenterBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusBmHb:(NSInteger)hb;
+ (BOOL)setAspectRatioBmHb:(NSInteger)hb;

@end
