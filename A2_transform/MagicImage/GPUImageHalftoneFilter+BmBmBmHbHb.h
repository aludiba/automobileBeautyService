#import "GPUImagePixellateFilter.h"
#import "GPUImageHalftoneFilter.h"
#import "GPUImageHalftoneFilter+Bm.h"
#import "GPUImageHalftoneFilter+BmBm.h"
#import "GPUImageHalftoneFilter+BmBmBm.h"
#import "GPUImageHalftoneFilter+BmBmBmHb.h"

@interface GPUImageHalftoneFilter (BmBmBmHbHb)
+ (BOOL)initBmBmBmHbHb:(NSInteger)hb;

@end
