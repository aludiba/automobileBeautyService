#import "GPUImageTwoInputFilter.h"
#import "GPUImageMultiplyBlendFilter.h"
#import "GPUImageMultiplyBlendFilter+Bm.h"
#import "GPUImageMultiplyBlendFilter+BmBm.h"

@interface GPUImageMultiplyBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
