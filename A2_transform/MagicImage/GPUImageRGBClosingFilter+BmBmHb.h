#import "GPUImageFilterGroup.h"
#import "GPUImageRGBClosingFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageRGBDilationFilter.h"
#import "GPUImageRGBClosingFilter+Bm.h"
#import "GPUImageRGBClosingFilter+BmBm.h"

@interface GPUImageRGBClosingFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)initWithRadiusBmBmHb:(NSInteger)hb;

@end
