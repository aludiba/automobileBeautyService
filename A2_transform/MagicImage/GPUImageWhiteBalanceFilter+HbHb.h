#import "GPUImageFilter.h"
#import "GPUImageWhiteBalanceFilter.h"
#import "GPUImageWhiteBalanceFilter+Hb.h"

@interface GPUImageWhiteBalanceFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)setTemperatureHbHb:(NSInteger)hb;
+ (BOOL)setTintHbHb:(NSInteger)hb;

@end
