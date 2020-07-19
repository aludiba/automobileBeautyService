#import "BMBMRACSignalps.h"
@implementation BMBMRACSignalps
+ (BOOL)sEsubscribe:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)QBsubscribenext:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)fJsubscribenextvcompleted:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)bEsubscribenextuerrormcompleted:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)ZKsubscribeerror:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)ZGsubscribecompleted:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)dAsubscribenextzerror:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)ETsubscribeerrorccompleted:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
