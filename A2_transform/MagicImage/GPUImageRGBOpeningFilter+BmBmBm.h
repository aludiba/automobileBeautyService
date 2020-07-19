#import "GPUImageFilterGroup.h"
#import "GPUImageRGBOpeningFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageRGBDilationFilter.h"
#import "GPUImageRGBOpeningFilter+Bm.h"
#import "GPUImageRGBOpeningFilter+BmBm.h"

@interface GPUImageRGBOpeningFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)initWithRadiusBmBmBm:(NSInteger)BM;

@end
