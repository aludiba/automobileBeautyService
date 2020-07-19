#import "BMUILabele.h"
@implementation BMUILabele
+ (BOOL)wmj_label:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)cmj_textWith:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
