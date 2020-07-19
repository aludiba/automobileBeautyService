#import "hbRACSignalSequenceP.h"
@implementation hbRACSignalSequenceP
+ (BOOL)JSequencewithsignalbm:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)wHeadbm:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)XTailbm:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)NArraybm:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)dDescriptionbm:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
