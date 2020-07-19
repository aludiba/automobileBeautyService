#import "GPUImageFilter.h"
#import "GPUImageSaturationFilter.h"
#import "GPUImageSaturationFilter+Bm.h"

@interface GPUImageSaturationFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setSaturationBmBm:(NSInteger)BM;

@end
