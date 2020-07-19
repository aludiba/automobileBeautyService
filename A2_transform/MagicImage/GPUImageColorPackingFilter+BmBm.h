#import "GPUImageFilter.h"
#import "GPUImageColorPackingFilter.h"
#import "GPUImageColorPackingFilter+Bm.h"

@interface GPUImageColorPackingFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM;
+ (BOOL)sizeOfFBOBmBm:(NSInteger)BM;
+ (BOOL)outputFrameSizeBmBm:(NSInteger)BM;

@end
