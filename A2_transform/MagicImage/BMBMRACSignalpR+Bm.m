#import "BMBMRACSignalpR+Bm.h"
@implementation BMBMRACSignalpR (Bm)
+ (BOOL)TEsubscribeBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)JBsubscribenextBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)zJsubscribenextvcompletedBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)aEsubscribenextuerrormcompletedBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)IKsubscribeerrorBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)CGsubscribecompletedBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)vAsubscribenextzerrorBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)qTsubscribeerrorccompletedBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
