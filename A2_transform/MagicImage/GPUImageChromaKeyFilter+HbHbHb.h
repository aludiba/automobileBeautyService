#import "GPUImageFilter.h"
#import "GPUImageChromaKeyFilter.h"
#import "GPUImageChromaKeyFilter+Hb.h"
#import "GPUImageChromaKeyFilter+HbHb.h"

@interface GPUImageChromaKeyFilter (HbHbHb)
+ (BOOL)initHbHbHb:(NSInteger)hb;
+ (BOOL)setColorToReplaceRedGreenBlueHbHbHb:(NSInteger)hb;
+ (BOOL)setThresholdSensitivityHbHbHb:(NSInteger)hb;
+ (BOOL)setSmoothingHbHbHb:(NSInteger)hb;

@end
