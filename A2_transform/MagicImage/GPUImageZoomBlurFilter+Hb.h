#import "GPUImageFilter.h"
#import "GPUImageZoomBlurFilter.h"

@interface GPUImageZoomBlurFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb;
+ (BOOL)setBlurSizeHb:(NSInteger)hb;
+ (BOOL)setBlurCenterHb:(NSInteger)hb;

@end
