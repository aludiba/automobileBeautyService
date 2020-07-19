#import "BMGPUImageLevelsFilterb.h"
@implementation BMGPUImageLevelsFilterb
+ (BOOL)uInitbmbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)NUpdateuniformsbmbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)QSetmingammamaxminoutmaxoutbmbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)OSetmingammamaxbmbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)YSetredmingammamaxminoutmaxoutbmbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)ISetredmingammamaxbmbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)ISetgreenmingammamaxminoutmaxoutbmbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)xSetgreenmingammamaxbmbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)VSetbluemingammamaxminoutmaxoutbmbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)ISetbluemingammamaxbmbm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
