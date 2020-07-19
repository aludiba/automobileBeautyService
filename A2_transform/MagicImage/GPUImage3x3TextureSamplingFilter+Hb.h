#import "GPUImageFilter.h"
#import "GPUImage3x3TextureSamplingFilter.h"

@interface GPUImage3x3TextureSamplingFilter (Hb)
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringHb:(NSInteger)hb;
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb;
+ (BOOL)setTexelWidthHb:(NSInteger)hb;
+ (BOOL)setTexelHeightHb:(NSInteger)hb;

@end
