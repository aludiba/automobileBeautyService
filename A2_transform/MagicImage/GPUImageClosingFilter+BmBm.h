#import "GPUImageFilterGroup.h"
#import "GPUImageClosingFilter.h"
#import "GPUImageErosionFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageClosingFilter+Bm.h"

@interface GPUImageClosingFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithRadiusBmBm:(NSInteger)BM;
+ (BOOL)setVerticalTexelSpacingBmBm:(NSInteger)BM;
+ (BOOL)setHorizontalTexelSpacingBmBm:(NSInteger)BM;

@end
