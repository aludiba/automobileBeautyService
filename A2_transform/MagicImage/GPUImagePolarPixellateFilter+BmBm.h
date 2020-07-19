#import "GPUImageFilter.h"
#import "GPUImagePolarPixellateFilter.h"
#import "GPUImagePolarPixellateFilter+Bm.h"

@interface GPUImagePolarPixellateFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM;
+ (BOOL)setPixelSizeBmBm:(NSInteger)BM;
+ (BOOL)setCenterBmBm:(NSInteger)BM;

@end
