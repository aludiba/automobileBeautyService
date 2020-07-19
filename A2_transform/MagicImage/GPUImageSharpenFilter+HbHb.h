#import "GPUImageFilter.h"
#import "GPUImageSharpenFilter.h"
#import "GPUImageSharpenFilter+Hb.h"

@interface GPUImageSharpenFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHbHb:(NSInteger)hb;
+ (BOOL)setSharpnessHbHb:(NSInteger)hb;

@end
