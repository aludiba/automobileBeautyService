#import "BMUILabele+Bm.h"
@implementation BMUILabele (Bm)
+ (BOOL)wmj_labelBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)cmj_textWithBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
