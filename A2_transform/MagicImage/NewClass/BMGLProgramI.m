#import "BMGLProgramI.h"
@implementation BMGLProgramI
+ (BOOL)YInitwithvertexshaderstringWFragmentshaderstring:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)YInitwithvertexshaderstringVFragmentshaderfilename:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)YInitwithvertexshaderfilenameVFragmentshaderfilename:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)oCompileshaderVTypeMString:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)SAddattribute:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)FAttributeindex:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)lUniformindex:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)Blink:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)Kuse:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)Evalidate:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)sdealloc:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
