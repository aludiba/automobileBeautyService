#import "BMBMGPUImageLevelsFilterGe.h"
@implementation BMBMGPUImageLevelsFilterGe
+ (BOOL)vEinit:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)CAupdateuniforms:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)UUsetminbgammaemaxsminoutqmaxout:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)pZsetminjgammanmax:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)bUsetredminfgammabmaxfminoutfmaxout:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)TYsetredminjgammasmax:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)DIsetgreenminwgammawmaxpminoutbmaxout:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)sGsetgreenmindgammaemax:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)nMsetblueminggammajmaxsminoutpmaxout:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)OJsetblueminbgammabmax:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
