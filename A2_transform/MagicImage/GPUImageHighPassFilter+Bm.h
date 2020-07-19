#import "GPUImageFilterGroup.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageDifferenceBlendFilter.h"
#import "GPUImageHighPassFilter.h"

@interface GPUImageHighPassFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setFilterStrengthBm:(NSInteger)BM;
+ (BOOL)filterStrengthBm:(NSInteger)BM;

@end
