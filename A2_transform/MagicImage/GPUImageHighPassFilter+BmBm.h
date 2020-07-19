#import "GPUImageFilterGroup.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageDifferenceBlendFilter.h"
#import "GPUImageHighPassFilter.h"
#import "GPUImageHighPassFilter+Bm.h"

@interface GPUImageHighPassFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setFilterStrengthBmBm:(NSInteger)BM;
+ (BOOL)filterStrengthBmBm:(NSInteger)BM;

@end
