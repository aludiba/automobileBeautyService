#import "GPUImageFilter.h"
#import "GPUImageWhiteBalanceFilter.h"
#import "GPUImageWhiteBalanceFilter+Bm.h"
#import "GPUImageWhiteBalanceFilter+BmBm.h"

@interface GPUImageWhiteBalanceFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setTemperatureBmBmBm:(NSInteger)BM;
+ (BOOL)setTintBmBmBm:(NSInteger)BM;

@end
