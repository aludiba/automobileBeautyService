#import "GPUImageFilter.h"
#import "GPUImageSwirlFilter.h"

@interface GPUImageSwirlFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb;
+ (BOOL)setRadiusHb:(NSInteger)hb;
+ (BOOL)setAngleHb:(NSInteger)hb;
+ (BOOL)setCenterHb:(NSInteger)hb;

@end
