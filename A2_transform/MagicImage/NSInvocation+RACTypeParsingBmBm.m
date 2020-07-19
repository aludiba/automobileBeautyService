#import "NSInvocation+RACTypeParsingBmBm.h"
@implementation NSInvocation (RACTypeParsingBmBm)
+ (BOOL)rac_setArgumentAtindexBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)rac_argumentAtIndexBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)rac_argumentsTupleBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)setRac_argumentsTupleBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)rac_returnValueBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
