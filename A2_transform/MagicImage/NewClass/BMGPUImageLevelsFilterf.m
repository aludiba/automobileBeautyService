#import "BMGPUImageLevelsFilterf.h"
@implementation BMGPUImageLevelsFilterf
+ (BOOL)LInitbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)xUpdateuniformsbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)cSetmingammamaxminoutmaxoutbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)rSetmingammamaxbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)RSetredmingammamaxminoutmaxoutbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)XSetredmingammamaxbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)gSetgreenmingammamaxminoutmaxoutbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)QSetgreenmingammamaxbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)ZSetbluemingammamaxminoutmaxoutbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)GSetbluemingammamaxbm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
