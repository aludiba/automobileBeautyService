#import "GPUImageFilter.h"
#import "GPUImageColorPackingFilter.h"

@interface GPUImageColorPackingFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb;
+ (BOOL)sizeOfFBOHb:(NSInteger)hb;
+ (BOOL)outputFrameSizeHb:(NSInteger)hb;

@end
