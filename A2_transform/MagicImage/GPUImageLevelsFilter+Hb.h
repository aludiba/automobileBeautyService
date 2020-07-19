#import "GPUImageFilter.h"
#import "GPUImageLevelsFilter.h"

@interface GPUImageLevelsFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)updateUniformsHb:(NSInteger)hb;
+ (BOOL)setMinGammaMaxMinoutMaxoutHb:(NSInteger)hb;
+ (BOOL)setMinGammaMaxHb:(NSInteger)hb;
+ (BOOL)setRedMinGammaMaxMinoutMaxoutHb:(NSInteger)hb;
+ (BOOL)setRedMinGammaMaxHb:(NSInteger)hb;
+ (BOOL)setGreenMinGammaMaxMinoutMaxoutHb:(NSInteger)hb;
+ (BOOL)setGreenMinGammaMaxHb:(NSInteger)hb;
+ (BOOL)setBlueMinGammaMaxMinoutMaxoutHb:(NSInteger)hb;
+ (BOOL)setBlueMinGammaMaxHb:(NSInteger)hb;

@end
