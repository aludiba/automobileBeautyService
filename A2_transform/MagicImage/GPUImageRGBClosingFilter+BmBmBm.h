#import "GPUImageFilterGroup.h"
#import "GPUImageRGBClosingFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageRGBDilationFilter.h"
#import "GPUImageRGBClosingFilter+Bm.h"
#import "GPUImageRGBClosingFilter+BmBm.h"

@interface GPUImageRGBClosingFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)initWithRadiusBmBmBm:(NSInteger)BM;

@end
