#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImageXYDerivativeFilter.h"
#import "GPUImageXYDerivativeFilter+Bm.h"

@interface GPUImageXYDerivativeFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;

@end
