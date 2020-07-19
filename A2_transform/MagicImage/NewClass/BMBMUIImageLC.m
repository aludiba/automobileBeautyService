#import "BMBMUIImageLC.h"
@implementation BMBMUIImageLC
+ (BOOL)hEkeyboardleftimagebm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)IRkeyboardrightimagebm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)hZkeyboardupimagebm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)lUkeyboarddownimagebm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)JMkeyboardpreviousimagebm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)PXkeyboardnextimagebm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
