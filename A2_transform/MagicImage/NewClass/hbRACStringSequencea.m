#import "hbRACStringSequencea.h"
@implementation hbRACStringSequencea
+ (BOOL)TSequencewithstringoffsetbm:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)jHeadbm:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)BTailbm:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)sArraybm:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)gDescriptionbm:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
