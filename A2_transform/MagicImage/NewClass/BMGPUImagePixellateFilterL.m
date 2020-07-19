#import "BMGPUImagePixellateFilterL.h"
@implementation BMGPUImagePixellateFilterL
+ (BOOL)ZInitbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)AInitwithfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)dAdjustaspectratiobm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)bSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)mForceprocessingatsizebm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)ESetinputsizeatindexbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)uSetfractionalwidthofapixelbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)oSetaspectratiobm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
