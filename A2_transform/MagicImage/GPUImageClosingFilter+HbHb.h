#import "GPUImageFilterGroup.h"
#import "GPUImageClosingFilter.h"
#import "GPUImageErosionFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageClosingFilter+Hb.h"

@interface GPUImageClosingFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)initWithRadiusHbHb:(NSInteger)hb;
+ (BOOL)setVerticalTexelSpacingHbHb:(NSInteger)hb;
+ (BOOL)setHorizontalTexelSpacingHbHb:(NSInteger)hb;

@end
