#import "BMBMRACSignalpR+BmHb.h"
@implementation BMBMRACSignalpR (BmHb)
+ (BOOL)TEsubscribeBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)JBsubscribenextBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)zJsubscribenextvcompletedBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)aEsubscribenextuerrormcompletedBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)IKsubscribeerrorBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)CGsubscribecompletedBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)vAsubscribenextzerrorBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)qTsubscribeerrorccompletedBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
