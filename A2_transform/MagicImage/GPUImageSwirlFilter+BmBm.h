#import "GPUImageFilter.h"
#import "GPUImageSwirlFilter.h"
#import "GPUImageSwirlFilter+Bm.h"

@interface GPUImageSwirlFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM;
+ (BOOL)setRadiusBmBm:(NSInteger)BM;
+ (BOOL)setAngleBmBm:(NSInteger)BM;
+ (BOOL)setCenterBmBm:(NSInteger)BM;

@end
