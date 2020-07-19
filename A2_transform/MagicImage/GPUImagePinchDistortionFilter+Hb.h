#import "GPUImageFilter.h"
#import "GPUImagePinchDistortionFilter.h"

@interface GPUImagePinchDistortionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)adjustAspectRatioHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb;
+ (BOOL)setAspectRatioHb:(NSInteger)hb;
+ (BOOL)setRadiusHb:(NSInteger)hb;
+ (BOOL)setScaleHb:(NSInteger)hb;
+ (BOOL)setCenterHb:(NSInteger)hb;

@end
