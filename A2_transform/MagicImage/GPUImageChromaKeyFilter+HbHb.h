#import "GPUImageFilter.h"
#import "GPUImageChromaKeyFilter.h"
#import "GPUImageChromaKeyFilter+Hb.h"

@interface GPUImageChromaKeyFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)setColorToReplaceRedGreenBlueHbHb:(NSInteger)hb;
+ (BOOL)setThresholdSensitivityHbHb:(NSInteger)hb;
+ (BOOL)setSmoothingHbHb:(NSInteger)hb;

@end
