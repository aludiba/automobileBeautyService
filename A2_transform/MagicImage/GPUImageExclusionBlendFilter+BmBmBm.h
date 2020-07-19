#import "GPUImageTwoInputFilter.h"
#import "GPUImageExclusionBlendFilter.h"
#import "GPUImageExclusionBlendFilter+Bm.h"
#import "GPUImageExclusionBlendFilter+BmBm.h"

@interface GPUImageExclusionBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
