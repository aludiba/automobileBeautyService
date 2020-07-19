#import "GPUImageFilter.h"
#import "GPUImageCropFilter.h"

@interface GPUImageCropFilter (Bm)
+ (BOOL)initWithCropRegionBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM;
+ (BOOL)calculateCropTextureCoordinatesBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM;
+ (BOOL)setCropRegionBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM;

@end
