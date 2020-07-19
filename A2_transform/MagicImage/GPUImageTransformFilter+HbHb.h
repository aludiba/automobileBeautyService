#import "GPUImageFilter.h"
#import "GPUImageTransformFilter.h"
#import "GPUImageTransformFilter+Hb.h"

@interface GPUImageTransformFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)loadOrthoMatrixLeftRightBottomTopNearFarHbHb:(NSInteger)hb;
+ (BOOL)convert3DTransformTomatrixHbHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexHbHb:(NSInteger)hb;
+ (BOOL)HbHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHbHb:(NSInteger)hb;
+ (BOOL)setAffineTransformHbHb:(NSInteger)hb;
+ (BOOL)affineTransformHbHb:(NSInteger)hb;
+ (BOOL)setTransform3DHbHb:(NSInteger)hb;
+ (BOOL)setIgnoreAspectRatioHbHb:(NSInteger)hb;
+ (BOOL)setAnchorTopLeftHbHb:(NSInteger)hb;

@end
