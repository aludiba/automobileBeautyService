#import "GPUImageFilterGroup.h"
#import "GPUImageOpeningFilter.h"
#import "GPUImageErosionFilter.h"
#import "GPUImageDilationFilter.h"

@interface GPUImageOpeningFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithRadiusBm:(NSInteger)BM;
+ (BOOL)setVerticalTexelSpacingBm:(NSInteger)BM;
+ (BOOL)setHorizontalTexelSpacingBm:(NSInteger)BM;

@end
