#import "GPUImageFilter.h"
#import "GPUImageKuwaharaFilter.h"
#import "GPUImageKuwaharaFilter+Bm.h"

@interface GPUImageKuwaharaFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setRadiusBmBm:(NSInteger)BM;

@end
