#import "BMQMImageFilteru.h"
@implementation BMQMImageFilteru
+ (BOOL)EInitwithfiltermodelbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)uBindqmtexturebm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)OSetalphabm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
