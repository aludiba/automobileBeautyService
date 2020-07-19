#import "BMRTCheckMarkViewc.h"
@implementation BMRTCheckMarkViewc
+ (BOOL)DawakeFromNib:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)sDrawrect:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
