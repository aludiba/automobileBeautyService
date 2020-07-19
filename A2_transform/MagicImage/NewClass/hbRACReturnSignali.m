#import "hbRACReturnSignali.h"
@implementation hbRACReturnSignali
+ (BOOL)lSetnamebm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)QNamebm:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)jReturnbm:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)PSubscribebm:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
