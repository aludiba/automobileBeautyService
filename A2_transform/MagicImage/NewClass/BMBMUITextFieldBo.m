#import "BMBMUITextFieldBo.h"
@implementation BMBMUITextFieldBo
+ (BOOL)UZselectalltextbmbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)VOsetselectedrangebmbm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
