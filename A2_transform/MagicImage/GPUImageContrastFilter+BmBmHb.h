#import "GPUImageFilter.h"
#import "GPUImageContrastFilter.h"
#import "GPUImageContrastFilter+Bm.h"
#import "GPUImageContrastFilter+BmBm.h"

@interface GPUImageContrastFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setContrastBmBmHb:(NSInteger)hb;

@end
