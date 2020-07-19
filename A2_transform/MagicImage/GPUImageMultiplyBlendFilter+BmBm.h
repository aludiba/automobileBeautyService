#import "GPUImageTwoInputFilter.h"
#import "GPUImageMultiplyBlendFilter.h"
#import "GPUImageMultiplyBlendFilter+Bm.h"

@interface GPUImageMultiplyBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;

@end
