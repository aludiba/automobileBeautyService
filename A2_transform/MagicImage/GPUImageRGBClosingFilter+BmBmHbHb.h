#import "GPUImageFilterGroup.h"
#import "GPUImageRGBClosingFilter.h"
#import "GPUImageRGBErosionFilter.h"
#import "GPUImageRGBDilationFilter.h"
#import "GPUImageRGBClosingFilter+Bm.h"
#import "GPUImageRGBClosingFilter+BmBm.h"
#import "GPUImageRGBClosingFilter+BmBmHb.h"

@interface GPUImageRGBClosingFilter (BmBmHbHb)
+ (BOOL)initBmBmHbHb:(NSInteger)hb;
+ (BOOL)initWithRadiusBmBmHbHb:(NSInteger)hb;

@end
