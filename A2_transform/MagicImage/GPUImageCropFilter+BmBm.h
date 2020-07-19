#import "GPUImageFilter.h"
#import "GPUImageCropFilter.h"
#import "GPUImageCropFilter+Bm.h"

@interface GPUImageCropFilter (BmBm)
+ (BOOL)initWithCropRegionBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM;
+ (BOOL)calculateCropTextureCoordinatesBmBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBmBm:(NSInteger)BM;
+ (BOOL)setCropRegionBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM;

@end
