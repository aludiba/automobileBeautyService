#import "GPUImageFilter.h"
#import "GPUImageWhiteBalanceFilter.h"

@interface GPUImageWhiteBalanceFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setTemperatureBm:(NSInteger)BM;
+ (BOOL)setTintBm:(NSInteger)BM;

@end
