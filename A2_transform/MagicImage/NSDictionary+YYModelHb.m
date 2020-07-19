#import "NSDictionary+YYModelHb.h"
@implementation NSDictionary (YYModelHb)
+ (BOOL)yy_modelDictionaryWithClassJsonHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)yy_modelDictionaryWithClassDictionaryHb:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
