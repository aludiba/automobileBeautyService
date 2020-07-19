#import "GPUImageTwoInputFilter.h"
#import "GPUImageDissolveBlendFilter.h"
#import "GPUImageDissolveBlendFilter+Bm.h"
#import "GPUImageDissolveBlendFilter+BmBm.h"

@interface GPUImageDissolveBlendFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setMixBmBmHb:(NSInteger)hb;

@end
