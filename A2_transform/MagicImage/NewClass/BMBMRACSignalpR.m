#import "BMBMRACSignalpR.h"
@implementation BMBMRACSignalpR
+ (BOOL)TEsubscribe:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)JBsubscribenext:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)zJsubscribenextvcompleted:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)aEsubscribenextuerrormcompleted:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)IKsubscribeerror:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)CGsubscribecompleted:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)vAsubscribenextzerror:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)qTsubscribeerrorccompleted:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
