#import "GPUImageFilterGroup.h"
#import "GPUImageOpeningFilter.h"
#import "GPUImageErosionFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageOpeningFilter+Bm.h"

@interface GPUImageOpeningFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithRadiusBmBm:(NSInteger)BM;
+ (BOOL)setVerticalTexelSpacingBmBm:(NSInteger)BM;
+ (BOOL)setHorizontalTexelSpacingBmBm:(NSInteger)BM;

@end
