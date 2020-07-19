#import "GPUImageFilter.h"
#import "GPUImagePerlinNoiseFilter.h"
#import "GPUImagePerlinNoiseFilter+Bm.h"

@interface GPUImagePerlinNoiseFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setScaleBmBm:(NSInteger)BM;
+ (BOOL)setColorStartBmBm:(NSInteger)BM;
+ (BOOL)setColorFinishBmBm:(NSInteger)BM;

@end
