#import "GPUImageTwoInputFilter.h"
#import "GPUImageDissolveBlendFilter.h"
#import "GPUImageDissolveBlendFilter+Bm.h"
#import "GPUImageDissolveBlendFilter+BmBm.h"

@interface GPUImageDissolveBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setMixBmBmBm:(NSInteger)BM;

@end
