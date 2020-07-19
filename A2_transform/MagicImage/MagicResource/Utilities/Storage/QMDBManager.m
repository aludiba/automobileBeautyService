#import "QMDBManager.h"
@implementation QMDBManager
+ (instancetype)shareManager
{
    static QMDBManager *sManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sManager = [[self alloc] init];
    });
    return sManager;
}
@end
