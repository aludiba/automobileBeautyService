#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImagePrewittEdgeDetectionFilter.h"
#import "GPUImagePrewittEdgeDetectionFilter+Bm.h"
#import "GPUImagePrewittEdgeDetectionFilter+BmBm.h"

@interface GPUImagePrewittEdgeDetectionFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;

@end
