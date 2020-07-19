#import "GPUImageFilter.h"
#import "GPUImageChromaKeyFilter.h"

@interface GPUImageChromaKeyFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setColorToReplaceRedGreenBlueHb:(NSInteger)hb;
+ (BOOL)setThresholdSensitivityHb:(NSInteger)hb;
+ (BOOL)setSmoothingHb:(NSInteger)hb;

@end
