#import "GPUImageFilter.h"
#import "GPUImagePinchDistortionFilter.h"
#import "GPUImagePinchDistortionFilter+Bm.h"

@interface GPUImagePinchDistortionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)adjustAspectRatioBmBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM;
+ (BOOL)setAspectRatioBmBm:(NSInteger)BM;
+ (BOOL)setRadiusBmBm:(NSInteger)BM;
+ (BOOL)setScaleBmBm:(NSInteger)BM;
+ (BOOL)setCenterBmBm:(NSInteger)BM;

@end
