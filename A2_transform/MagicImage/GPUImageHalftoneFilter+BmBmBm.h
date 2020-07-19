#import "GPUImagePixellateFilter.h"
#import "GPUImageHalftoneFilter.h"
#import "GPUImageHalftoneFilter+Bm.h"
#import "GPUImageHalftoneFilter+BmBm.h"

@interface GPUImageHalftoneFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
