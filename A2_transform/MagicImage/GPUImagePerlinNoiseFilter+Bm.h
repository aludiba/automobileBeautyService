#import "GPUImageFilter.h"
#import "GPUImagePerlinNoiseFilter.h"

@interface GPUImagePerlinNoiseFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setScaleBm:(NSInteger)BM;
+ (BOOL)setColorStartBm:(NSInteger)BM;
+ (BOOL)setColorFinishBm:(NSInteger)BM;

@end
