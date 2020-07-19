#import "GPUImageFilter.h"
#import "GPUImageSaturationFilter.h"
#import "GPUImageSaturationFilter+Bm.h"

@interface GPUImageSaturationFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)setSaturationBmHb:(NSInteger)hb;

@end
