#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageGaussianBlurPositionFilter.h"

@interface GPUImageGaussianBlurPositionFilter (Hb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)adjustAspectRatioHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb;
+ (BOOL)setBlurSizeHb:(NSInteger)hb;
+ (BOOL)setBlurCenterHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusHb:(NSInteger)hb;
+ (BOOL)setAspectRatioHb:(NSInteger)hb;

@end
