#import "BMUITableViewr.h"
@implementation BMUITableViewr
+ (BOOL)Wload:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)Cmj_reloadData:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
