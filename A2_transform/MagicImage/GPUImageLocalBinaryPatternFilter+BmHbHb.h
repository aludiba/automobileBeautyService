#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageLocalBinaryPatternFilter.h"
#import "GPUImageLocalBinaryPatternFilter+Bm.h"
#import "GPUImageLocalBinaryPatternFilter+BmHb.h"

@interface GPUImageLocalBinaryPatternFilter (BmHbHb)
+ (BOOL)initBmHbHb:(NSInteger)hb;

@end
