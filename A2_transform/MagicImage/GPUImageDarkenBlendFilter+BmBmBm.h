#import "GPUImageTwoInputFilter.h"
#import "GPUImageDarkenBlendFilter.h"
#import "GPUImageDarkenBlendFilter+Bm.h"
#import "GPUImageDarkenBlendFilter+BmBm.h"

@interface GPUImageDarkenBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
