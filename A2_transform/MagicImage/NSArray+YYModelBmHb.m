#import "NSArray+YYModelBmHb.h"
@implementation NSArray (YYModelBmHb)
+ (BOOL)yy_modelArrayWithClassJsonBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)yy_modelArrayWithClassArrayBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
