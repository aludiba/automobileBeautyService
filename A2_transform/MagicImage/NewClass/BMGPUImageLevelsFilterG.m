#import "BMGPUImageLevelsFilterG.h"
@implementation BMGPUImageLevelsFilterG
+ (BOOL)ginit:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)hupdateUniforms:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)ZSetminkGammajMaxjMinoutKMaxout:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)WSetminxGammapMax:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)VSetredminUGammaZMaxCMinoutNMaxout:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)uSetredminMGammaKMax:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)mSetgreenminqGammalMaxWMinoutxMaxout:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)iSetgreenminUGammavMax:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)cSetblueminxGammaaMaxDMinoutAMaxout:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)zSetblueminKGammabMax:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
