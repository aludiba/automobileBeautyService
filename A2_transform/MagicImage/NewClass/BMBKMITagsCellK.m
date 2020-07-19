#import "BMBKMITagsCellK.h"
@implementation BMBKMITagsCellK
+ (BOOL)dInitwithstyleBReuseidentifier:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)bSetbkmodel:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
