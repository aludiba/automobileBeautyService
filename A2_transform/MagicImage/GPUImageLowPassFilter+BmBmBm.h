#import "GPUImageFilterGroup.h"
#import "GPUImageBuffer.h"
#import "GPUImageDissolveBlendFilter.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageLowPassFilter+Bm.h"
#import "GPUImageLowPassFilter+BmBm.h"

@interface GPUImageLowPassFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setFilterStrengthBmBmBm:(NSInteger)BM;
+ (BOOL)filterStrengthBmBmBm:(NSInteger)BM;
+ (BOOL)addTargetAttexturelocationBmBmBm:(NSInteger)BM;

@end
