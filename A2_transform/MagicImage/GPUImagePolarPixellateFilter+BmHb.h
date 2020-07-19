#import "GPUImageFilter.h"
#import "GPUImagePolarPixellateFilter.h"
#import "GPUImagePolarPixellateFilter+Bm.h"

@interface GPUImagePolarPixellateFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexBmHb:(NSInteger)hb;
+ (BOOL)setPixelSizeBmHb:(NSInteger)hb;
+ (BOOL)setCenterBmHb:(NSInteger)hb;

@end
