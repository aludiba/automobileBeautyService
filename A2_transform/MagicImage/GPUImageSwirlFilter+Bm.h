#import "GPUImageFilter.h"
#import "GPUImageSwirlFilter.h"

@interface GPUImageSwirlFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM;
+ (BOOL)setRadiusBm:(NSInteger)BM;
+ (BOOL)setAngleBm:(NSInteger)BM;
+ (BOOL)setCenterBm:(NSInteger)BM;

@end
