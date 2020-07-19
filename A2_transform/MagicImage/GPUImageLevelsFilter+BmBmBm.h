#import "GPUImageFilter.h"
#import "GPUImageLevelsFilter.h"
#import "GPUImageLevelsFilter+Bm.h"
#import "GPUImageLevelsFilter+BmBm.h"

@interface GPUImageLevelsFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)updateUniformsBmBmBm:(NSInteger)BM;
+ (BOOL)setMinGammaMaxMinoutMaxoutBmBmBm:(NSInteger)BM;
+ (BOOL)setMinGammaMaxBmBmBm:(NSInteger)BM;
+ (BOOL)setRedMinGammaMaxMinoutMaxoutBmBmBm:(NSInteger)BM;
+ (BOOL)setRedMinGammaMaxBmBmBm:(NSInteger)BM;
+ (BOOL)setGreenMinGammaMaxMinoutMaxoutBmBmBm:(NSInteger)BM;
+ (BOOL)setGreenMinGammaMaxBmBmBm:(NSInteger)BM;
+ (BOOL)setBlueMinGammaMaxMinoutMaxoutBmBmBm:(NSInteger)BM;
+ (BOOL)setBlueMinGammaMaxBmBmBm:(NSInteger)BM;

@end
