#import "NSInvocation+RACTypeParsingHb.h"
@implementation NSInvocation (RACTypeParsingHb)
+ (BOOL)rac_setArgumentAtindexHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)rac_argumentAtIndexHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)rac_argumentsTupleHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)setRac_argumentsTupleHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)rac_returnValueHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
