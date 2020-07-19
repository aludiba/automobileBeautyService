#import "GPUImageFilter.h"
#import "GPUImageColorPackingFilter.h"
#import "GPUImageColorPackingFilter+Bm.h"
#import "GPUImageColorPackingFilter+BmBm.h"

@interface GPUImageColorPackingFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeBmBmHb:(NSInteger)hb;
+ (BOOL)sizeOfFBOBmBmHb:(NSInteger)hb;
+ (BOOL)outputFrameSizeBmBmHb:(NSInteger)hb;

@end
