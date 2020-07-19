#import "GPUImageTwoInputFilter.h"
#import "GPUImageLookupFilter.h"
#import "GPUImageLookupFilter+Bm.h"

@interface GPUImageLookupFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setIntensityBmBm:(NSInteger)BM;

@end
