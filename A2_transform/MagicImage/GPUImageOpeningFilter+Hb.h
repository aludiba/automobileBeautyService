#import "GPUImageFilterGroup.h"
#import "GPUImageOpeningFilter.h"
#import "GPUImageErosionFilter.h"
#import "GPUImageDilationFilter.h"

@interface GPUImageOpeningFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithRadiusHb:(NSInteger)hb;
+ (BOOL)setVerticalTexelSpacingHb:(NSInteger)hb;
+ (BOOL)setHorizontalTexelSpacingHb:(NSInteger)hb;

@end
