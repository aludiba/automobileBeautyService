#import "GPUImageFilter.h"
#import "GPUImageStretchDistortionFilter.h"
#import "GPUImageStretchDistortionFilter+Bm.h"
#import "GPUImageStretchDistortionFilter+BmBm.h"

@interface GPUImageStretchDistortionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)setCenterBmBmBm:(NSInteger)BM;

@end
