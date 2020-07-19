#import "GPUImageFilterGroup.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageDifferenceBlendFilter.h"
#import "GPUImageHighPassFilter.h"
#import "GPUImageHighPassFilter+Bm.h"
#import "GPUImageHighPassFilter+BmBm.h"
#import "GPUImageHighPassFilter+BmBmBm.h"

@interface GPUImageHighPassFilter (BmBmBmHb)
+ (BOOL)initBmBmBmHb:(NSInteger)hb;
+ (BOOL)setFilterStrengthBmBmBmHb:(NSInteger)hb;
+ (BOOL)filterStrengthBmBmBmHb:(NSInteger)hb;

@end
