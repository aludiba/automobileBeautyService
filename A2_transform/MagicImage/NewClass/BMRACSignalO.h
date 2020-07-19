#import <Foundation/Foundation.h>
@interface BMRACSignalO: NSObject
+ (BOOL)dSubscribebm:(NSInteger)BM;
+ (BOOL)cSubscribenextbm:(NSInteger)BM;
+ (BOOL)FSubscribenextcompletedbm:(NSInteger)BM;
+ (BOOL)TSubscribenexterrorcompletedbm:(NSInteger)BM;
+ (BOOL)hSubscribeerrorbm:(NSInteger)BM;
+ (BOOL)USubscribecompletedbm:(NSInteger)BM;
+ (BOOL)GSubscribenexterrorbm:(NSInteger)BM;
+ (BOOL)wSubscribeerrorcompletedbm:(NSInteger)BM;

@end
