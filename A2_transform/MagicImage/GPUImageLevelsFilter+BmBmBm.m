#import "GPUImageLevelsFilter+BmBmBm.h"
@implementation GPUImageLevelsFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)updateUniformsBmBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setMinGammaMaxMinoutMaxoutBmBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setMinGammaMaxBmBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setRedMinGammaMaxMinoutMaxoutBmBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)setRedMinGammaMaxBmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)setGreenMinGammaMaxMinoutMaxoutBmBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setGreenMinGammaMaxBmBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)setBlueMinGammaMaxMinoutMaxoutBmBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setBlueMinGammaMaxBmBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
