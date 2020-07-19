#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImagePrewittEdgeDetectionFilter.h"
#import "GPUImagePrewittEdgeDetectionFilter+Bm.h"
#import "GPUImagePrewittEdgeDetectionFilter+BmBm.h"
#import "GPUImagePrewittEdgeDetectionFilter+BmBmHb.h"

@interface GPUImagePrewittEdgeDetectionFilter (BmBmHbHb)
+ (BOOL)initBmBmHbHb:(NSInteger)hb;

@end
