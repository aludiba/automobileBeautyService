#import "GPUImageFilter.h"
#import "GPUImageLevelsFilter.h"
#import "GPUImageLevelsFilter+Bm.h"

@interface GPUImageLevelsFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)updateUniformsBmBm:(NSInteger)BM;
+ (BOOL)setMinGammaMaxMinoutMaxoutBmBm:(NSInteger)BM;
+ (BOOL)setMinGammaMaxBmBm:(NSInteger)BM;
+ (BOOL)setRedMinGammaMaxMinoutMaxoutBmBm:(NSInteger)BM;
+ (BOOL)setRedMinGammaMaxBmBm:(NSInteger)BM;
+ (BOOL)setGreenMinGammaMaxMinoutMaxoutBmBm:(NSInteger)BM;
+ (BOOL)setGreenMinGammaMaxBmBm:(NSInteger)BM;
+ (BOOL)setBlueMinGammaMaxMinoutMaxoutBmBm:(NSInteger)BM;
+ (BOOL)setBlueMinGammaMaxBmBm:(NSInteger)BM;

@end
