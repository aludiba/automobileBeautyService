#import "BMUIImageu.h"
@implementation BMUIImageu
+ (BOOL)LGetbackgroundimagegWithalphaeWidth:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)sGetbackgroundimageLWithalpha:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)hGetbackgroundimage:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)xBackgroundimagesAlphanWidth:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)WGeteffectbgimagenWithmaskcolor:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)yImagewithtintcolor:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)yImagewithgradienttintcolor:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)XImagewithtintcolorzBlendmode:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)WGetsizewithrategLimitsize:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
