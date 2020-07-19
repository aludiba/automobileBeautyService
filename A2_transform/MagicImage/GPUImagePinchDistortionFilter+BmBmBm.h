#import "GPUImageFilter.h"
#import "GPUImagePinchDistortionFilter.h"
#import "GPUImagePinchDistortionFilter+Bm.h"
#import "GPUImagePinchDistortionFilter+BmBm.h"

@interface GPUImagePinchDistortionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)adjustAspectRatioBmBmBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeBmBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)setAspectRatioBmBmBm:(NSInteger)BM;
+ (BOOL)setRadiusBmBmBm:(NSInteger)BM;
+ (BOOL)setScaleBmBmBm:(NSInteger)BM;
+ (BOOL)setCenterBmBmBm:(NSInteger)BM;

@end
