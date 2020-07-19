#import "hbRACStringSequenceL.h"
@implementation hbRACStringSequenceL
+ (BOOL)WSequencewithstringoffsetbm:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)nHeadbm:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)VTailbm:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)pArraybm:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)xDescriptionbm:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
