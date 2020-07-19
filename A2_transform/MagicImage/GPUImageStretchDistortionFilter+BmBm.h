#import "GPUImageFilter.h"
#import "GPUImageStretchDistortionFilter.h"
#import "GPUImageStretchDistortionFilter+Bm.h"

@interface GPUImageStretchDistortionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM;
+ (BOOL)setCenterBmBm:(NSInteger)BM;

@end
