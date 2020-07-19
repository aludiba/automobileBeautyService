#import "GPUImageFilter.h"
#import "GPUImageColorMatrixFilter.h"

@interface GPUImageColorMatrixFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setIntensityHb:(NSInteger)hb;
+ (BOOL)setColorMatrixHb:(NSInteger)hb;

@end
