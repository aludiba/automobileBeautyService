#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImagePrewittEdgeDetectionFilter.h"
#import "GPUImagePrewittEdgeDetectionFilter+Bm.h"

@interface GPUImagePrewittEdgeDetectionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;

@end
