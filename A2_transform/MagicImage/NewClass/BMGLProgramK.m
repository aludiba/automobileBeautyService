#import "BMGLProgramK.h"
@implementation BMGLProgramK
+ (BOOL)mInitwithvertexshaderstringcFragmentshaderstring:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)wInitwithvertexshaderstringsFragmentshaderfilename:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)wInitwithvertexshaderfilenameUFragmentshaderfilename:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)tCompileshaderSTypeSString:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)bAddattribute:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)pAttributeindex:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)bUniformindex:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)xlink:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)Kuse:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)Lvalidate:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)sdealloc:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
