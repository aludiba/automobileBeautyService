#import "GPUImageFilter.h"
#import "GPUImageTransformFilter.h"
#import "GPUImageTransformFilter+Bm.h"

@interface GPUImageTransformFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)loadOrthoMatrixLeftRightBottomTopNearFarBmBm:(NSInteger)BM;
+ (BOOL)convert3DTransformTomatrixBmBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBmBm:(NSInteger)BM;
+ (BOOL)BmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM;
+ (BOOL)setAffineTransformBmBm:(NSInteger)BM;
+ (BOOL)affineTransformBmBm:(NSInteger)BM;
+ (BOOL)setTransform3DBmBm:(NSInteger)BM;
+ (BOOL)setIgnoreAspectRatioBmBm:(NSInteger)BM;
+ (BOOL)setAnchorTopLeftBmBm:(NSInteger)BM;

@end
