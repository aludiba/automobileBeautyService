#import "GPUImageTwoInputFilter.h"
#import "GPUImageChromaKeyBlendFilter.h"
#import "GPUImageChromaKeyBlendFilter+Bm.h"
#import "GPUImageChromaKeyBlendFilter+BmBm.h"
#import "GPUImageChromaKeyBlendFilter+BmBmHb.h"

@interface GPUImageChromaKeyBlendFilter (BmBmHbHb)
+ (BOOL)initBmBmHbHb:(NSInteger)hb;
+ (BOOL)setColorToReplaceRedGreenBlueBmBmHbHb:(NSInteger)hb;
+ (BOOL)setThresholdSensitivityBmBmHbHb:(NSInteger)hb;
+ (BOOL)setSmoothingBmBmHbHb:(NSInteger)hb;

@end
