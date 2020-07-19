#import "BMRTCheckMarkViewQ.h"
@implementation BMRTCheckMarkViewQ
+ (BOOL)oawakeFromNib:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)QDrawrect:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
