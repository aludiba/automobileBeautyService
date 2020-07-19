#import "BMGPUImageLevelsFilterx.h"
@implementation BMGPUImageLevelsFilterx
+ (BOOL)VInitbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)JUpdateuniformsbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)nSetmingammamaxminoutmaxoutbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)HSetmingammamaxbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)VSetredmingammamaxminoutmaxoutbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)iSetredmingammamaxbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)MSetgreenmingammamaxminoutmaxoutbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)VSetgreenmingammamaxbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)HSetbluemingammamaxminoutmaxoutbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)qSetbluemingammamaxbm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
