#import "GPUImageTwoInputFilter.h"
#import "GPUImageAlphaBlendFilter.h"
#import "GPUImageAlphaBlendFilter+Bm.h"
#import "GPUImageAlphaBlendFilter+BmBm.h"

@interface GPUImageAlphaBlendFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setMixBmBmHb:(NSInteger)hb;

@end
