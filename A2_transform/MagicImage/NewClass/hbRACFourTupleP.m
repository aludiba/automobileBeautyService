#import "hbRACFourTupleP.h"
@implementation hbRACFourTupleP
+ (BOOL)rinit:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)OInitwithbackingarray:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)dTuplebyaddingobject:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)VPackPFirstPSecondsThird:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)GIsequal:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
