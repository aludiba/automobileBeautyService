#import "GPUImageFilter.h"
#import "GPUImageBulgeDistortionFilter.h"
#import "GPUImageBulgeDistortionFilter+Bm.h"
#import "GPUImageBulgeDistortionFilter+BmBm.h"

@interface GPUImageBulgeDistortionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)adjustAspectRatioBmBmBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeBmBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)setAspectRatioBmBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)setRadiusBmBmBm:(NSInteger)BM;
+ (BOOL)setScaleBmBmBm:(NSInteger)BM;
+ (BOOL)setCenterBmBmBm:(NSInteger)BM;

@end
