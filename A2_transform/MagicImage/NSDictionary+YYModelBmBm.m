#import "NSDictionary+YYModelBmBm.h"
@implementation NSDictionary (YYModelBmBm)
+ (BOOL)yy_modelDictionaryWithClassJsonBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)yy_modelDictionaryWithClassDictionaryBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
