#import "GPUImageFilter.h"
#import "GPUImagePosterizeFilter.h"
#import "GPUImagePosterizeFilter+Bm.h"
#import "GPUImagePosterizeFilter+BmBm.h"

@interface GPUImagePosterizeFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setColorLevelsBmBmHb:(NSInteger)hb;

@end
