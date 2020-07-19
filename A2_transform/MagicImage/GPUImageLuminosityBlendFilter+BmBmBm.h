#import "GPUImageTwoInputFilter.h"
#import "GPUImageLuminosityBlendFilter.h"
#import "GPUImageLuminosityBlendFilter+Bm.h"
#import "GPUImageLuminosityBlendFilter+BmBm.h"

@interface GPUImageLuminosityBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
