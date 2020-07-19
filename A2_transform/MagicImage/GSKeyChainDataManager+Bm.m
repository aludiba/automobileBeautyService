#import "GSKeyChainDataManager+Bm.h"
@implementation GSKeyChainDataManager (Bm)
+ (BOOL)saveUUIDBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)readUUIDBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)deleteUUIDBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
