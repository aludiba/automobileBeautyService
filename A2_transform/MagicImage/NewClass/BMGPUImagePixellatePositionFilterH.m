#import "BMGPUImagePixellatePositionFilterH.h"
@implementation BMGPUImagePixellatePositionFilterH
+ (BOOL)XInitbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)gInitwithfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)uSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)rSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)WAdjustaspectratiobm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)BForceprocessingatsizebm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)dSetfractionalwidthofapixelbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)RSetaspectratiobm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)dSetcenterbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)MSetradiusbm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
