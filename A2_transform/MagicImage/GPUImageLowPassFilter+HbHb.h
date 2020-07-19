#import "GPUImageFilterGroup.h"
#import "GPUImageBuffer.h"
#import "GPUImageDissolveBlendFilter.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageLowPassFilter+Hb.h"

@interface GPUImageLowPassFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)setFilterStrengthHbHb:(NSInteger)hb;
+ (BOOL)filterStrengthHbHb:(NSInteger)hb;
+ (BOOL)addTargetAttexturelocationHbHb:(NSInteger)hb;

@end
