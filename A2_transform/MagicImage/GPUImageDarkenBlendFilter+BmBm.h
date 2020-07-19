#import "GPUImageTwoInputFilter.h"
#import "GPUImageDarkenBlendFilter.h"
#import "GPUImageDarkenBlendFilter+Bm.h"

@interface GPUImageDarkenBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;

@end
