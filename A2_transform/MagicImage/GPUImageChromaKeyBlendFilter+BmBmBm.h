#import "GPUImageTwoInputFilter.h"
#import "GPUImageChromaKeyBlendFilter.h"
#import "GPUImageChromaKeyBlendFilter+Bm.h"
#import "GPUImageChromaKeyBlendFilter+BmBm.h"

@interface GPUImageChromaKeyBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setColorToReplaceRedGreenBlueBmBmBm:(NSInteger)BM;
+ (BOOL)setThresholdSensitivityBmBmBm:(NSInteger)BM;
+ (BOOL)setSmoothingBmBmBm:(NSInteger)BM;

@end
