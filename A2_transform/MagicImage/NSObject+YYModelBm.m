#import "NSObject+YYModelBm.h"
@implementation NSObject (YYModelBm)
+ (BOOL)_yy_dictionaryWithJSONBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)yy_modelWithJSONBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)yy_modelWithDictionaryBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)yy_modelSetWithJSONBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)yy_modelSetWithDictionaryBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)yy_modelToJSONObjectBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)yy_modelToJSONDataBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)yy_modelToJSONStringBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)yy_modelCopyBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)yy_modelEncodeWithCoderBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)yy_modelInitWithCoderBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)yy_modelHashBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)yy_modelIsEqualBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)yy_modelDescriptionBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
