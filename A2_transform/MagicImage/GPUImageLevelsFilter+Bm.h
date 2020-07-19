#import "GPUImageFilter.h"
#import "GPUImageLevelsFilter.h"

@interface GPUImageLevelsFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)updateUniformsBm:(NSInteger)BM;
+ (BOOL)setMinGammaMaxMinoutMaxoutBm:(NSInteger)BM;
+ (BOOL)setMinGammaMaxBm:(NSInteger)BM;
+ (BOOL)setRedMinGammaMaxMinoutMaxoutBm:(NSInteger)BM;
+ (BOOL)setRedMinGammaMaxBm:(NSInteger)BM;
+ (BOOL)setGreenMinGammaMaxMinoutMaxoutBm:(NSInteger)BM;
+ (BOOL)setGreenMinGammaMaxBm:(NSInteger)BM;
+ (BOOL)setBlueMinGammaMaxMinoutMaxoutBm:(NSInteger)BM;
+ (BOOL)setBlueMinGammaMaxBm:(NSInteger)BM;

@end
