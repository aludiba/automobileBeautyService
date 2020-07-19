#import "GPUImageFilterGroup.h"
#import "GPUImageClosingFilter.h"
#import "GPUImageErosionFilter.h"
#import "GPUImageDilationFilter.h"

@interface GPUImageClosingFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithRadiusHb:(NSInteger)hb;
+ (BOOL)setVerticalTexelSpacingHb:(NSInteger)hb;
+ (BOOL)setHorizontalTexelSpacingHb:(NSInteger)hb;

@end
