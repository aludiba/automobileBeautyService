#import "GPUImageFilter.h"
#import "GPUImageMotionBlurFilter.h"

@interface GPUImageMotionBlurFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb;
+ (BOOL)recalculateTexelOffsetsHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb;
+ (BOOL)setBlurAngleHb:(NSInteger)hb;
+ (BOOL)setBlurSizeHb:(NSInteger)hb;

@end
