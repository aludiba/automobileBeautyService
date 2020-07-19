#import "GPUImagePixellateFilter.h"
#import "GPUImagePolkaDotFilter.h"
#import "GPUImagePolkaDotFilter+Bm.h"

@interface GPUImagePolkaDotFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)setDotScalingBmHb:(NSInteger)hb;

@end
