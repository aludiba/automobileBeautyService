#import "BMQMProgressHUDO.h"
@implementation BMQMProgressHUDO
+ (BOOL)tshow:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)ahide:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
