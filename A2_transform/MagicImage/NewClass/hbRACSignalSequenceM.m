#import "hbRACSignalSequenceM.h"
@implementation hbRACSignalSequenceM
+ (BOOL)eSequencewithsignal:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)Zhead:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)ytail:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)farray:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)mdescription:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
