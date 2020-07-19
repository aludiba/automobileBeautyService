#import "GLProgram+HbHb.h"
@implementation GLProgram (HbHb)
+ (BOOL)initWithVertexShaderStringFragmentshaderstringHbHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)initWithVertexShaderStringFragmentshaderfilenameHbHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)initWithVertexShaderFilenameFragmentshaderfilenameHbHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)compileShaderTypeStringHbHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)addAttributeHbHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)attributeIndexHbHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)uniformIndexHbHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)linkHbHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)useHbHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)validateHbHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)deallocHbHb:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
