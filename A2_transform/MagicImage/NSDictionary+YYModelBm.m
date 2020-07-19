#import "NSDictionary+YYModelBm.h"
@implementation NSDictionary (YYModelBm)
+ (BOOL)yy_modelDictionaryWithClassJsonBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)yy_modelDictionaryWithClassDictionaryBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
