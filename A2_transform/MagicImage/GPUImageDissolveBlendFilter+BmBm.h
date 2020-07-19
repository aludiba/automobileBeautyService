#import "GPUImageTwoInputFilter.h"
#import "GPUImageDissolveBlendFilter.h"
#import "GPUImageDissolveBlendFilter+Bm.h"

@interface GPUImageDissolveBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setMixBmBm:(NSInteger)BM;

@end
