#import "GPUImageTwoInputFilter.h"
#import "GPUImageSaturationBlendFilter.h"
#import "GPUImageSaturationBlendFilter+Bm.h"
#import "GPUImageSaturationBlendFilter+BmBm.h"

@interface GPUImageSaturationBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
