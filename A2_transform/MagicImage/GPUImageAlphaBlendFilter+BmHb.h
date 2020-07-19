#import "GPUImageTwoInputFilter.h"
#import "GPUImageAlphaBlendFilter.h"
#import "GPUImageAlphaBlendFilter+Bm.h"

@interface GPUImageAlphaBlendFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)setMixBmHb:(NSInteger)hb;

@end
