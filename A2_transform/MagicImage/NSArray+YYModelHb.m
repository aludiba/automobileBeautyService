#import "NSArray+YYModelHb.h"
@implementation NSArray (YYModelHb)
+ (BOOL)yy_modelArrayWithClassJsonHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)yy_modelArrayWithClassArrayHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
