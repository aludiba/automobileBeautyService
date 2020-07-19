#import "QMDBManager+BmHb.h"
@implementation QMDBManager (BmHb)
+ (BOOL)shareManagerBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
