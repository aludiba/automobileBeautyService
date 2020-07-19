#import "GPUImageFilter.h"
#import "GPUImageColorPackingFilter.h"

@interface GPUImageColorPackingFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM;
+ (BOOL)sizeOfFBOBm:(NSInteger)BM;
+ (BOOL)outputFrameSizeBm:(NSInteger)BM;

@end
