#import "GPUImageFilterGroup.h"
#import "GPUImageBuffer.h"
#import "GPUImageDissolveBlendFilter.h"
#import "GPUImageLowPassFilter.h"

@interface GPUImageLowPassFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setFilterStrengthBm:(NSInteger)BM;
+ (BOOL)filterStrengthBm:(NSInteger)BM;
+ (BOOL)addTargetAttexturelocationBm:(NSInteger)BM;

@end
