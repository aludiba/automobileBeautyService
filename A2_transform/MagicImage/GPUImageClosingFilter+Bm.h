#import "GPUImageFilterGroup.h"
#import "GPUImageClosingFilter.h"
#import "GPUImageErosionFilter.h"
#import "GPUImageDilationFilter.h"

@interface GPUImageClosingFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithRadiusBm:(NSInteger)BM;
+ (BOOL)setVerticalTexelSpacingBm:(NSInteger)BM;
+ (BOOL)setHorizontalTexelSpacingBm:(NSInteger)BM;

@end
