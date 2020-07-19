#import "GPUImageFilter.h"
#import "GPUImageSharpenFilter.h"
#import "GPUImageSharpenFilter+Bm.h"
#import "GPUImageSharpenFilter+BmBm.h"

@interface GPUImageSharpenFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBmBm:(NSInteger)BM;
+ (BOOL)setSharpnessBmBmBm:(NSInteger)BM;

@end
