#import "GPUImageFilterGroup.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageDifferenceBlendFilter.h"
#import "GPUImageHighPassFilter.h"

@interface GPUImageHighPassFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setFilterStrengthHb:(NSInteger)hb;
+ (BOOL)filterStrengthHb:(NSInteger)hb;

@end
