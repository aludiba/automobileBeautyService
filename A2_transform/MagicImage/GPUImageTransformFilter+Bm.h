#import "GPUImageFilter.h"
#import "GPUImageTransformFilter.h"

@interface GPUImageTransformFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)loadOrthoMatrixLeftRightBottomTopNearFarBm:(NSInteger)BM;
+ (BOOL)convert3DTransformTomatrixBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM;
+ (BOOL)Bm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM;
+ (BOOL)setAffineTransformBm:(NSInteger)BM;
+ (BOOL)affineTransformBm:(NSInteger)BM;
+ (BOOL)setTransform3DBm:(NSInteger)BM;
+ (BOOL)setIgnoreAspectRatioBm:(NSInteger)BM;
+ (BOOL)setAnchorTopLeftBm:(NSInteger)BM;

@end
