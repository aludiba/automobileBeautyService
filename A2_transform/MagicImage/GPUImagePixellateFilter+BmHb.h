#import "GPUImageFilter.h"
#import "GPUImagePixellateFilter.h"
#import "GPUImagePixellateFilter+Bm.h"

@interface GPUImagePixellateFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)initWithFragmentShaderFromStringBmHb:(NSInteger)hb;
+ (BOOL)adjustAspectRatioBmHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexBmHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeBmHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexBmHb:(NSInteger)hb;
+ (BOOL)setFractionalWidthOfAPixelBmHb:(NSInteger)hb;
+ (BOOL)setAspectRatioBmHb:(NSInteger)hb;

@end
