#import "GPUImageColorMatrixFilter.h"
#import "GPUImageHSBFilter.h"

@interface GPUImageHSBFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)resetHb:(NSInteger)hb;
+ (BOOL)rotateHueHb:(NSInteger)hb;
+ (BOOL)adjustSaturationHb:(NSInteger)hb;
+ (BOOL)adjustBrightnessHb:(NSInteger)hb;
+ (BOOL)_updateColorMatrixHb:(NSInteger)hb;
+ (BOOL)for(x=0Hb:(NSInteger)hb;

@end
