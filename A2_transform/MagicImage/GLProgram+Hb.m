#import "GLProgram+Hb.h"
@implementation GLProgram (Hb)
+ (BOOL)initWithVertexShaderStringFragmentshaderstringHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)initWithVertexShaderStringFragmentshaderfilenameHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)initWithVertexShaderFilenameFragmentshaderfilenameHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)compileShaderTypeStringHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)addAttributeHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)attributeIndexHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)uniformIndexHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)linkHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)useHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)validateHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
