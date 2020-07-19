#import "GPUImageTwoInputFilter.h"
#import "GPUImageSubtractBlendFilter.h"
#import "GPUImageSubtractBlendFilter+Bm.h"
#import "GPUImageSubtractBlendFilter+BmBm.h"

@interface GPUImageSubtractBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
