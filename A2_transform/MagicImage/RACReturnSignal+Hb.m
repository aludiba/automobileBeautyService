#import "RACReturnSignal+Hb.h"
@implementation RACReturnSignal (Hb)
+ (BOOL)setNameHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)nameHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)returnHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)subscribeHb:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
