#import "GPUImageFilter.h"
#import "GPUImagePosterizeFilter.h"
#import "GPUImagePosterizeFilter+Bm.h"
#import "GPUImagePosterizeFilter+BmBm.h"
#import "GPUImagePosterizeFilter+BmBmHb.h"

@interface GPUImagePosterizeFilter (BmBmHbHb)
+ (BOOL)initBmBmHbHb:(NSInteger)hb;
+ (BOOL)setColorLevelsBmBmHbHb:(NSInteger)hb;

@end
