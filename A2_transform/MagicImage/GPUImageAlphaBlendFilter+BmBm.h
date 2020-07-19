#import "GPUImageTwoInputFilter.h"
#import "GPUImageAlphaBlendFilter.h"
#import "GPUImageAlphaBlendFilter+Bm.h"

@interface GPUImageAlphaBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setMixBmBm:(NSInteger)BM;

@end
