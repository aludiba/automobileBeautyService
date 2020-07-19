#import "GPUImageFilter.h"
#import "GPUImageSharpenFilter.h"

@interface GPUImageSharpenFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM;
+ (BOOL)setSharpnessBm:(NSInteger)BM;

@end
