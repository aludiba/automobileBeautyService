#import "GPUImageTwoInputFilter.h"
#import "GPUImageAlphaBlendFilter.h"
#import "GPUImageAlphaBlendFilter+Bm.h"
#import "GPUImageAlphaBlendFilter+BmBm.h"

@interface GPUImageAlphaBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setMixBmBmBm:(NSInteger)BM;

@end
