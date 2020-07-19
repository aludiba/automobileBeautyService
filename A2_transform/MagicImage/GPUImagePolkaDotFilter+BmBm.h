#import "GPUImagePixellateFilter.h"
#import "GPUImagePolkaDotFilter.h"
#import "GPUImagePolkaDotFilter+Bm.h"

@interface GPUImagePolkaDotFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setDotScalingBmBm:(NSInteger)BM;

@end
