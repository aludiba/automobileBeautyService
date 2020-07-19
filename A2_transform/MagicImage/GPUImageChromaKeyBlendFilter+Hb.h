#import "GPUImageTwoInputFilter.h"
#import "GPUImageChromaKeyBlendFilter.h"

@interface GPUImageChromaKeyBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setColorToReplaceRedGreenBlueHb:(NSInteger)hb;
+ (BOOL)setThresholdSensitivityHb:(NSInteger)hb;
+ (BOOL)setSmoothingHb:(NSInteger)hb;

@end
