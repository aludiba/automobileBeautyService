#import "BMBMGPUImageLevelsFilterGN.h"
@implementation BMBMGPUImageLevelsFilterGN
+ (BOOL)gGinitbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)lHupdateuniformsbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)wZsetminkgammajmaxjminoutkmaxoutbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)fWsetminxgammapmaxbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)WVsetredminugammazmaxcminoutnmaxoutbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)eUsetredminmgammakmaxbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)xMsetgreenminqgammalmaxwminoutxmaxoutbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)sIsetgreenminugammavmaxbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)ACsetblueminxgammaamaxdminoutamaxoutbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)RZsetblueminkgammabmaxbm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
