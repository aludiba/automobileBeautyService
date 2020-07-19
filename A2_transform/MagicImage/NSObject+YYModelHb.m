#import "NSObject+YYModelHb.h"
@implementation NSObject (YYModelHb)
+ (BOOL)_yy_dictionaryWithJSONHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)yy_modelWithJSONHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)yy_modelWithDictionaryHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)yy_modelSetWithJSONHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)yy_modelSetWithDictionaryHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)yy_modelToJSONObjectHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)yy_modelToJSONDataHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)yy_modelToJSONStringHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)yy_modelCopyHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)yy_modelEncodeWithCoderHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)yy_modelInitWithCoderHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)yy_modelHashHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)yy_modelIsEqualHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)yy_modelDescriptionHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
