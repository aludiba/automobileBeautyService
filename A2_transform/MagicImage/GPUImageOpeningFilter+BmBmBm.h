#import "GPUImageFilterGroup.h"
#import "GPUImageOpeningFilter.h"
#import "GPUImageErosionFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageOpeningFilter+Bm.h"
#import "GPUImageOpeningFilter+BmBm.h"

@interface GPUImageOpeningFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)initWithRadiusBmBmBm:(NSInteger)BM;
+ (BOOL)setVerticalTexelSpacingBmBmBm:(NSInteger)BM;
+ (BOOL)setHorizontalTexelSpacingBmBmBm:(NSInteger)BM;

@end
