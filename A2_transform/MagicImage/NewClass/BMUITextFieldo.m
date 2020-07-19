#import "BMUITextFieldo.h"
@implementation BMUITextFieldo
+ (BOOL)crac_textSignal:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)Krac_newTextChannel:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
