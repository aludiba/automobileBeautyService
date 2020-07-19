#import "GPUImageFilter.h"
#import "GPUImagePixellateFilter.h"
#import "GPUImagePixellateFilter+Bm.h"
#import "GPUImagePixellateFilter+BmHb.h"

@interface GPUImagePixellateFilter (BmHbHb)
+ (BOOL)initBmHbHb:(NSInteger)hb;
+ (BOOL)initWithFragmentShaderFromStringBmHbHb:(NSInteger)hb;
+ (BOOL)adjustAspectRatioBmHbHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexBmHbHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeBmHbHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexBmHbHb:(NSInteger)hb;
+ (BOOL)setFractionalWidthOfAPixelBmHbHb:(NSInteger)hb;
+ (BOOL)setAspectRatioBmHbHb:(NSInteger)hb;

@end
