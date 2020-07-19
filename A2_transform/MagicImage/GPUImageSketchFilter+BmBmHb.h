#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImageSketchFilter.h"
#import "GPUImageSketchFilter+Bm.h"
#import "GPUImageSketchFilter+BmBm.h"

@interface GPUImageSketchFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;

@end
