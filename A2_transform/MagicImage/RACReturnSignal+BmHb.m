#import "RACReturnSignal+BmHb.h"
@implementation RACReturnSignal (BmHb)
+ (BOOL)setNameBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)nameBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)returnBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)subscribeBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
