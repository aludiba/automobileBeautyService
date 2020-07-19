#import "GPUImageFilter.h"
#import "GPUImagePosterizeFilter.h"
#import "GPUImagePosterizeFilter+Bm.h"

@interface GPUImagePosterizeFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setColorLevelsBmBm:(NSInteger)BM;

@end
