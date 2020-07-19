#import "NSArray+YYAddBmBm.h"
@implementation NSArray (YYAddBmBm)
+ (BOOL)arrayWithPlistDataBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)arrayWithPlistStringBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)plistDataBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)plistStringBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)randomObjectBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)objectOrNilAtIndexBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)jsonStringEncodedBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)jsonPrettyStringEncodedBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
