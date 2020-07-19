#import "GPUImageFilterGroup.h"
#import "GPUImageBuffer.h"
#import "GPUImageDissolveBlendFilter.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageLowPassFilter+Bm.h"

@interface GPUImageLowPassFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setFilterStrengthBmBm:(NSInteger)BM;
+ (BOOL)filterStrengthBmBm:(NSInteger)BM;
+ (BOOL)addTargetAttexturelocationBmBm:(NSInteger)BM;

@end
