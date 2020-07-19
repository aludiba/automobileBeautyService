#import "GPUImageTwoInputFilter.h"
#import "GPUImageAddBlendFilter.h"
#import "GPUImageAddBlendFilter+Bm.h"
#import "GPUImageAddBlendFilter+BmBm.h"

@interface GPUImageAddBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
