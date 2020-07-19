#import "BMBMUIImageLC+Bm.h"
@implementation BMBMUIImageLC (Bm)
+ (BOOL)hEkeyboardleftimagebmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)IRkeyboardrightimagebmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)hZkeyboardupimagebmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)lUkeyboarddownimagebmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)JMkeyboardpreviousimagebmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)PXkeyboardnextimagebmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
