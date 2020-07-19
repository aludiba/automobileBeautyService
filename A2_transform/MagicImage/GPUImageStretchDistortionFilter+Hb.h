#import "GPUImageFilter.h"
#import "GPUImageStretchDistortionFilter.h"

@interface GPUImageStretchDistortionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb;
+ (BOOL)setCenterHb:(NSInteger)hb;

@end
