#import "hbNSKeyedUnarchiverP.h"
@implementation hbNSKeyedUnarchiverP
+ (BOOL)rUnarchiveobjectwithdataeException:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)jUnarchiveobjectwithfilesException:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
