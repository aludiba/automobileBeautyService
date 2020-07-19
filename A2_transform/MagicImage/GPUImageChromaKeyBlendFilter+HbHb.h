#import "GPUImageTwoInputFilter.h"
#import "GPUImageChromaKeyBlendFilter.h"
#import "GPUImageChromaKeyBlendFilter+Hb.h"

@interface GPUImageChromaKeyBlendFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)setColorToReplaceRedGreenBlueHbHb:(NSInteger)hb;
+ (BOOL)setThresholdSensitivityHbHb:(NSInteger)hb;
+ (BOOL)setSmoothingHbHb:(NSInteger)hb;

@end
