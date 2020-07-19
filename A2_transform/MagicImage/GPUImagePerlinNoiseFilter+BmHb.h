#import "GPUImageFilter.h"
#import "GPUImagePerlinNoiseFilter.h"
#import "GPUImagePerlinNoiseFilter+Bm.h"

@interface GPUImagePerlinNoiseFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)setScaleBmHb:(NSInteger)hb;
+ (BOOL)setColorStartBmHb:(NSInteger)hb;
+ (BOOL)setColorFinishBmHb:(NSInteger)hb;

@end
