#import "NSArray+YYAddBm.h"
@implementation NSArray (YYAddBm)
+ (BOOL)arrayWithPlistDataBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)arrayWithPlistStringBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)plistDataBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)plistStringBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)randomObjectBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)objectOrNilAtIndexBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)jsonStringEncodedBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)jsonPrettyStringEncodedBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
