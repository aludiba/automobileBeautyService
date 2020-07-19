#import "GPUImageFilterGroup.h"
#import "GPUImageClosingFilter.h"
#import "GPUImageErosionFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageClosingFilter+Bm.h"
#import "GPUImageClosingFilter+BmBm.h"

@interface GPUImageClosingFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)initWithRadiusBmBmBm:(NSInteger)BM;
+ (BOOL)setVerticalTexelSpacingBmBmBm:(NSInteger)BM;
+ (BOOL)setHorizontalTexelSpacingBmBmBm:(NSInteger)BM;

@end
