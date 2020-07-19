#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImagePrewittEdgeDetectionFilter.h"
#import "GPUImagePrewittEdgeDetectionFilter+Bm.h"
#import "GPUImagePrewittEdgeDetectionFilter+BmBm.h"

@interface GPUImagePrewittEdgeDetectionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
