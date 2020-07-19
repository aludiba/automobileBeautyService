#import "BMGPUImageLevelsFilterG+BmBm.h"
@implementation BMGPUImageLevelsFilterG (BmBm)
+ (BOOL)ginitBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)hupdateUniformsBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)ZSetminkGammajMaxjMinoutKMaxoutBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)WSetminxGammapMaxBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)VSetredminUGammaZMaxCMinoutNMaxoutBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)uSetredminMGammaKMaxBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)mSetgreenminqGammalMaxWMinoutxMaxoutBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)iSetgreenminUGammavMaxBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)cSetblueminxGammaaMaxDMinoutAMaxoutBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)zSetblueminKGammabMaxBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
