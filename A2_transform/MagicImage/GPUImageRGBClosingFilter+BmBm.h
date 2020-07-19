#import "GPUImageFilterGroup.h"
#import "GPUImageRGBClosingFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageRGBDilationFilter.h"
#import "GPUImageRGBClosingFilter+Bm.h"

@interface GPUImageRGBClosingFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithRadiusBmBm:(NSInteger)BM;

@end
