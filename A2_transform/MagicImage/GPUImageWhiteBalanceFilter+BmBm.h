#import "GPUImageFilter.h"
#import "GPUImageWhiteBalanceFilter.h"
#import "GPUImageWhiteBalanceFilter+Bm.h"

@interface GPUImageWhiteBalanceFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setTemperatureBmBm:(NSInteger)BM;
+ (BOOL)setTintBmBm:(NSInteger)BM;

@end
