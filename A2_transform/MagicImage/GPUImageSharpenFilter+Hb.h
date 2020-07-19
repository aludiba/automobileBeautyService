#import "GPUImageFilter.h"
#import "GPUImageSharpenFilter.h"

@interface GPUImageSharpenFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb;
+ (BOOL)setSharpnessHb:(NSInteger)hb;

@end
