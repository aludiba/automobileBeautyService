#import "GPUImageFilter.h"
#import "GPUImageChromaKeyFilter.h"

@interface GPUImageChromaKeyFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setColorToReplaceRedGreenBlueBm:(NSInteger)BM;
+ (BOOL)setThresholdSensitivityBm:(NSInteger)BM;
+ (BOOL)setSmoothingBm:(NSInteger)BM;

@end
