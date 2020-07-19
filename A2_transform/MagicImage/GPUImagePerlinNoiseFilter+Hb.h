#import "GPUImageFilter.h"
#import "GPUImagePerlinNoiseFilter.h"

@interface GPUImagePerlinNoiseFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setScaleHb:(NSInteger)hb;
+ (BOOL)setColorStartHb:(NSInteger)hb;
+ (BOOL)setColorFinishHb:(NSInteger)hb;

@end
