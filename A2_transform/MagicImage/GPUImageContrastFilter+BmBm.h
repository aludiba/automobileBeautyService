#import "GPUImageFilter.h"
#import "GPUImageContrastFilter.h"
#import "GPUImageContrastFilter+Bm.h"

@interface GPUImageContrastFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setContrastBmBm:(NSInteger)BM;

@end
