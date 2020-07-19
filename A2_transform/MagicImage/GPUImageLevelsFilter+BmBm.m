#import "GPUImageLevelsFilter+BmBm.h"
@implementation GPUImageLevelsFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)updateUniformsBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)setMinGammaMaxMinoutMaxoutBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setMinGammaMaxBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setRedMinGammaMaxMinoutMaxoutBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)setRedMinGammaMaxBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)setGreenMinGammaMaxMinoutMaxoutBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setGreenMinGammaMaxBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setBlueMinGammaMaxMinoutMaxoutBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)setBlueMinGammaMaxBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
