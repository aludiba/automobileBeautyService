#import "GPUImageTwoInputFilter.h"
#import "GPUImageDifferenceBlendFilter.h"
#import "GPUImageDifferenceBlendFilter+Bm.h"

@interface GPUImageDifferenceBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;

@end
