#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImageXYDerivativeFilter.h"
#import "GPUImageXYDerivativeFilter+Bm.h"

@interface GPUImageXYDerivativeFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;

@end
