#import "GPUImageFilter.h"
#import "GPUImageColorMatrixFilter.h"
#import "GPUImageColorMatrixFilter+Bm.h"
#import "GPUImageColorMatrixFilter+BmBm.h"

@interface GPUImageColorMatrixFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setIntensityBmBmHb:(NSInteger)hb;
+ (BOOL)setColorMatrixBmBmHb:(NSInteger)hb;

@end
