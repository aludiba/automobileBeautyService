#import "RACEmptySignal+Hb.h"
@implementation RACEmptySignal (Hb)
+ (BOOL)setNameHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)nameHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)emptyHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)subscribeHb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
