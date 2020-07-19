#import "GPUImageFilter.h"
#import "GPUImageBulgeDistortionFilter.h"
#import "GPUImageBulgeDistortionFilter+Bm.h"

@interface GPUImageBulgeDistortionFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)adjustAspectRatioBmHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeBmHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexBmHb:(NSInteger)hb;
+ (BOOL)setAspectRatioBmHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexBmHb:(NSInteger)hb;
+ (BOOL)setRadiusBmHb:(NSInteger)hb;
+ (BOOL)setScaleBmHb:(NSInteger)hb;
+ (BOOL)setCenterBmHb:(NSInteger)hb;

@end
