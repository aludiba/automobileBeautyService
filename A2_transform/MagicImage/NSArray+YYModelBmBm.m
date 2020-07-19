#import "NSArray+YYModelBmBm.h"
@implementation NSArray (YYModelBmBm)
+ (BOOL)yy_modelArrayWithClassJsonBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)yy_modelArrayWithClassArrayBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
