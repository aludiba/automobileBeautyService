#import "GPUImageFilter.h"
#import "GPUImageCropFilter.h"
#import "GPUImageCropFilter+Bm.h"
#import "GPUImageCropFilter+BmBm.h"

@interface GPUImageCropFilter (BmBmBm)
+ (BOOL)initWithCropRegionBmBmBm:(NSInteger)BM;
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)calculateCropTextureCoordinatesBmBmBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)setCropRegionBmBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBmBm:(NSInteger)BM;

@end
