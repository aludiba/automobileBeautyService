#import "GPUImageFilterGroup.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageDifferenceBlendFilter.h"
#import "GPUImageHighPassFilter.h"
#import "GPUImageHighPassFilter+Hb.h"

@interface GPUImageHighPassFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)setFilterStrengthHbHb:(NSInteger)hb;
+ (BOOL)filterStrengthHbHb:(NSInteger)hb;

@end
