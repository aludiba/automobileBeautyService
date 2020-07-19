#import "GPUImageFilter.h"
#import "GPUImagePinchDistortionFilter.h"
#import "GPUImagePinchDistortionFilter+Hb.h"

@interface GPUImagePinchDistortionFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)adjustAspectRatioHbHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeHbHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHbHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHbHb:(NSInteger)hb;
+ (BOOL)setAspectRatioHbHb:(NSInteger)hb;
+ (BOOL)setRadiusHbHb:(NSInteger)hb;
+ (BOOL)setScaleHbHb:(NSInteger)hb;
+ (BOOL)setCenterHbHb:(NSInteger)hb;

@end
