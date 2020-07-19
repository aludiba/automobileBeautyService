#import "GPUImageFilter.h"
#import "GPUImagePinchDistortionFilter.h"

@interface GPUImagePinchDistortionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)adjustAspectRatioBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM;
+ (BOOL)setAspectRatioBm:(NSInteger)BM;
+ (BOOL)setRadiusBm:(NSInteger)BM;
+ (BOOL)setScaleBm:(NSInteger)BM;
+ (BOOL)setCenterBm:(NSInteger)BM;

@end
