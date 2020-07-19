#import "GPUImageTwoInputFilter.h"
#import "GPUImageLinearBurnBlendFilter.h"
#import "GPUImageLinearBurnBlendFilter+Bm.h"
#import "GPUImageLinearBurnBlendFilter+BmBm.h"

@interface GPUImageLinearBurnBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
