#import "GPUImageFilter.h"
#import "GPUImageColorMatrixFilter.h"
#import "GPUImageColorMatrixFilter+Bm.h"
#import "GPUImageColorMatrixFilter+BmBm.h"
#import "GPUImageColorMatrixFilter+BmBmHb.h"

@interface GPUImageColorMatrixFilter (BmBmHbHb)
+ (BOOL)initBmBmHbHb:(NSInteger)hb;
+ (BOOL)setIntensityBmBmHbHb:(NSInteger)hb;
+ (BOOL)setColorMatrixBmBmHbHb:(NSInteger)hb;

@end
