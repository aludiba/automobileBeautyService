#import "BMNSInvocationJ.h"
@implementation BMNSInvocationJ
+ (BOOL)YRac_Setargumentatindexbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)iRac_Argumentatindexbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)uRac_Argumentstuplebm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)fSetrac_Argumentstuplebm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)WRac_Returnvaluebm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
