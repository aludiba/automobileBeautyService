#import "GPUImageTwoInputFilter.h"
#import "GPUImageDarkenBlendFilter.h"
#import "GPUImageDarkenBlendFilter+Bm.h"
#import "GPUImageDarkenBlendFilter+BmBm.h"

@interface GPUImageDarkenBlendFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;

@end
