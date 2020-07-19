#import "NSArray+YYModelBm.h"
@implementation NSArray (YYModelBm)
+ (BOOL)yy_modelArrayWithClassJsonBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)yy_modelArrayWithClassArrayBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
