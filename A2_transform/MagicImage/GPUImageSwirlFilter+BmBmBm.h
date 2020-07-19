#import "GPUImageFilter.h"
#import "GPUImageSwirlFilter.h"
#import "GPUImageSwirlFilter+Bm.h"
#import "GPUImageSwirlFilter+BmBm.h"

@interface GPUImageSwirlFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)setRadiusBmBmBm:(NSInteger)BM;
+ (BOOL)setAngleBmBmBm:(NSInteger)BM;
+ (BOOL)setCenterBmBmBm:(NSInteger)BM;

@end
