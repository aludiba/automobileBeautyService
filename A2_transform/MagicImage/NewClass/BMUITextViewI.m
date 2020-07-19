#import "BMUITextViewI.h"
@implementation BMUITextViewI
+ (BOOL)grac_delegateProxy:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)wrac_textSignal:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
