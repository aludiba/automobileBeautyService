#import "GPUImageFilterGroup.h"
#import "GPUImageBuffer.h"
#import "GPUImageDissolveBlendFilter.h"
#import "GPUImageLowPassFilter.h"

@interface GPUImageLowPassFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setFilterStrengthHb:(NSInteger)hb;
+ (BOOL)filterStrengthHb:(NSInteger)hb;
+ (BOOL)addTargetAttexturelocationHb:(NSInteger)hb;

@end
