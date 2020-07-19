#import "GPUImageFilter.h"
#import "GPUImagePolarPixellateFilter.h"

@interface GPUImagePolarPixellateFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb;
+ (BOOL)setPixelSizeHb:(NSInteger)hb;
+ (BOOL)setCenterHb:(NSInteger)hb;

@end
