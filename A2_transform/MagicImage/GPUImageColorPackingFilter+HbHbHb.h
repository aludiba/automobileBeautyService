#import "GPUImageFilter.h"
#import "GPUImageColorPackingFilter.h"
#import "GPUImageColorPackingFilter+Hb.h"
#import "GPUImageColorPackingFilter+HbHb.h"

@interface GPUImageColorPackingFilter (HbHbHb)
+ (BOOL)initHbHbHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHbHbHb:(NSInteger)hb;
+ (BOOL)sizeOfFBOHbHbHb:(NSInteger)hb;
+ (BOOL)outputFrameSizeHbHbHb:(NSInteger)hb;

@end
