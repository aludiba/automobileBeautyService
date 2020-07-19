#import "BMUIBarButtonItemf+Bm.h"
@implementation BMUIBarButtonItemf (Bm)
+ (BOOL)YSetactionblockBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)actionBlockBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
