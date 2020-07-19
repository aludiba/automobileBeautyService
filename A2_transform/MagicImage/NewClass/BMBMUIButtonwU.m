#import "BMBMUIButtonwU.h"
@implementation BMBMUIButtonwU
+ (BOOL)JBload:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)EOsd_Button_Layoutsubviews:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
