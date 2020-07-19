#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImageXYDerivativeFilter.h"
#import "GPUImageXYDerivativeFilter+Bm.h"
#import "GPUImageXYDerivativeFilter+BmBm.h"

@interface GPUImageXYDerivativeFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
