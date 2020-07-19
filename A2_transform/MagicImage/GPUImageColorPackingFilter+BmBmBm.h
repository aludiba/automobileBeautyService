#import "GPUImageFilter.h"
#import "GPUImageColorPackingFilter.h"
#import "GPUImageColorPackingFilter+Bm.h"
#import "GPUImageColorPackingFilter+BmBm.h"

@interface GPUImageColorPackingFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBmBm:(NSInteger)BM;
+ (BOOL)sizeOfFBOBmBmBm:(NSInteger)BM;
+ (BOOL)outputFrameSizeBmBmBm:(NSInteger)BM;

@end
