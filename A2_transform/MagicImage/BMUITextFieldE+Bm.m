#import "BMUITextFieldE+Bm.h"
@implementation BMUITextFieldE (Bm)
+ (BOOL)jselectAllTextBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)OSetselectedrangeBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
