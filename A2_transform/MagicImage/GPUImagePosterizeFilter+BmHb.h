#import "GPUImageFilter.h"
#import "GPUImagePosterizeFilter.h"
#import "GPUImagePosterizeFilter+Bm.h"

@interface GPUImagePosterizeFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)setColorLevelsBmHb:(NSInteger)hb;

@end
