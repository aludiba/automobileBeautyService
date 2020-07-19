#import "GPUImageTwoInputFilter.h"
#import "GPUImageChromaKeyBlendFilter.h"

@interface GPUImageChromaKeyBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setColorToReplaceRedGreenBlueBm:(NSInteger)BM;
+ (BOOL)setThresholdSensitivityBm:(NSInteger)BM;
+ (BOOL)setSmoothingBm:(NSInteger)BM;

@end
