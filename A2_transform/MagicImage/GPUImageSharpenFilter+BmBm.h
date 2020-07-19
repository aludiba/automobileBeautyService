#import "GPUImageFilter.h"
#import "GPUImageSharpenFilter.h"
#import "GPUImageSharpenFilter+Bm.h"

@interface GPUImageSharpenFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM;
+ (BOOL)setSharpnessBmBm:(NSInteger)BM;

@end
