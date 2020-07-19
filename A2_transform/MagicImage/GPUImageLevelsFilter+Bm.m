#import "GPUImageLevelsFilter+Bm.h"
@implementation GPUImageLevelsFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)updateUniformsBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setMinGammaMaxMinoutMaxoutBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setMinGammaMaxBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setRedMinGammaMaxMinoutMaxoutBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setRedMinGammaMaxBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)setGreenMinGammaMaxMinoutMaxoutBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setGreenMinGammaMaxBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setBlueMinGammaMaxMinoutMaxoutBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)setBlueMinGammaMaxBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
