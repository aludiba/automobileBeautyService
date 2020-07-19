#import "GPUImageFilter.h"
#import "GPUImageBulgeDistortionFilter.h"

@interface GPUImageBulgeDistortionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)adjustAspectRatioBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM;
+ (BOOL)setAspectRatioBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM;
+ (BOOL)setRadiusBm:(NSInteger)BM;
+ (BOOL)setScaleBm:(NSInteger)BM;
+ (BOOL)setCenterBm:(NSInteger)BM;

@end
