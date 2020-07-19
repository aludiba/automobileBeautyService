#import "BMBKMIFilterCellj.h"
@implementation BMBKMIFilterCellj
+ (BOOL)qInitwithstylejReuseidentifier:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)pSetbkmodel:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
