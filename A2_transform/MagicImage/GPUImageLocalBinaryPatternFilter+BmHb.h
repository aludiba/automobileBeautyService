#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImageLocalBinaryPatternFilter.h"
#import "GPUImageLocalBinaryPatternFilter+Bm.h"

@interface GPUImageLocalBinaryPatternFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;

@end
