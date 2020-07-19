#import "GPUImageFilterGroup.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageDifferenceBlendFilter.h"
#import "GPUImageHighPassFilter.h"
#import "GPUImageHighPassFilter+Bm.h"
#import "GPUImageHighPassFilter+BmBm.h"

@interface GPUImageHighPassFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setFilterStrengthBmBmBm:(NSInteger)BM;
+ (BOOL)filterStrengthBmBmBm:(NSInteger)BM;

@end
