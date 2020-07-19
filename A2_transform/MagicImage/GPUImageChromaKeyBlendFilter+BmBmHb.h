#import "GPUImageTwoInputFilter.h"
#import "GPUImageChromaKeyBlendFilter.h"
#import "GPUImageChromaKeyBlendFilter+Bm.h"
#import "GPUImageChromaKeyBlendFilter+BmBm.h"

@interface GPUImageChromaKeyBlendFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setColorToReplaceRedGreenBlueBmBmHb:(NSInteger)hb;
+ (BOOL)setThresholdSensitivityBmBmHb:(NSInteger)hb;
+ (BOOL)setSmoothingBmBmHb:(NSInteger)hb;

@end
