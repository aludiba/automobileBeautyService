#import "BMYYClassInfog.h"
@implementation BMYYClassInfog
+ (BOOL)LInitwithclass:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)G_update:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)dsetNeedUpdate:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)cneedUpdate:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)CClassinfowithclass:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)VClassinfowithclassname:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
