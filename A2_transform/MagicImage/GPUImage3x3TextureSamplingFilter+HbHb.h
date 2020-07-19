#import "GPUImageFilter.h"
#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImage3x3TextureSamplingFilter+Hb.h"

@interface GPUImage3x3TextureSamplingFilter (HbHb)
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringHbHb:(NSInteger)hb;
+ (BOOL)initWithFragmentShaderFromStringHbHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHbHb:(NSInteger)hb;
+ (BOOL)setTexelWidthHbHb:(NSInteger)hb;
+ (BOOL)setTexelHeightHbHb:(NSInteger)hb;

@end
