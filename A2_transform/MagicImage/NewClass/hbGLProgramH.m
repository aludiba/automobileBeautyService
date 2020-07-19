#import "hbGLProgramH.h"
@implementation hbGLProgramH
+ (BOOL)HInitwithvertexshaderstringfragmentshaderstringhb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)pInitwithvertexshaderstringfragmentshaderfilenamehb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)NInitwithvertexshaderfilenamefragmentshaderfilenamehb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)jCompileshadertypestringhb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)FAddattributehb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)qAttributeindexhb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)EUniformindexhb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)sLinkhb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)HUsehb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)EValidatehb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)XDeallochb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
