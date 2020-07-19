#import "GPUImageTwoInputFilter.h"
#import "GPUImageDifferenceBlendFilter.h"
#import "GPUImageDifferenceBlendFilter+Bm.h"
#import "GPUImageDifferenceBlendFilter+BmBm.h"

@interface GPUImageDifferenceBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
