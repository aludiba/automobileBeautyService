#import "GPUImageTwoInputFilter.h"
#import "GPUImageChromaKeyBlendFilter.h"
#import "GPUImageChromaKeyBlendFilter+Bm.h"

@interface GPUImageChromaKeyBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setColorToReplaceRedGreenBlueBmBm:(NSInteger)BM;
+ (BOOL)setThresholdSensitivityBmBm:(NSInteger)BM;
+ (BOOL)setSmoothingBmBm:(NSInteger)BM;

@end
