#import "GPUImageFilter.h"
#import "GPUImageColorPackingFilter.h"
#import "GPUImageColorPackingFilter+Hb.h"

@interface GPUImageColorPackingFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHbHb:(NSInteger)hb;
+ (BOOL)sizeOfFBOHbHb:(NSInteger)hb;
+ (BOOL)outputFrameSizeHbHb:(NSInteger)hb;

@end
