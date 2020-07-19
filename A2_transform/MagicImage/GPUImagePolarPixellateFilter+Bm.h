#import "GPUImageFilter.h"
#import "GPUImagePolarPixellateFilter.h"

@interface GPUImagePolarPixellateFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM;
+ (BOOL)setPixelSizeBm:(NSInteger)BM;
+ (BOOL)setCenterBm:(NSInteger)BM;

@end
