#import "GPUImageFilter.h"
#import "GPUImageWhiteBalanceFilter.h"

@interface GPUImageWhiteBalanceFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setTemperatureHb:(NSInteger)hb;
+ (BOOL)setTintHb:(NSInteger)hb;

@end
