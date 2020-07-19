#import "GPUImageFilter.h"
#import "GPUImageTransformFilter.h"

@interface GPUImageTransformFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)loadOrthoMatrixLeftRightBottomTopNearFarHb:(NSInteger)hb;
+ (BOOL)convert3DTransformTomatrixHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb;
+ (BOOL)Hb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb;
+ (BOOL)setAffineTransformHb:(NSInteger)hb;
+ (BOOL)affineTransformHb:(NSInteger)hb;
+ (BOOL)setTransform3DHb:(NSInteger)hb;
+ (BOOL)setIgnoreAspectRatioHb:(NSInteger)hb;
+ (BOOL)setAnchorTopLeftHb:(NSInteger)hb;

@end
