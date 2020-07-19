#import "BMUILabele+BmHb.h"
@implementation BMUILabele (BmHb)
+ (BOOL)wmj_labelBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)cmj_textWithBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
