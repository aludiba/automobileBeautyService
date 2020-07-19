#import <Foundation/Foundation.h>
@interface BMRACSignalf: NSObject
+ (BOOL)VSubscribe:(NSInteger)BM;
+ (BOOL)BSubscribenext:(NSInteger)BM;
+ (BOOL)mSubscribenextsCompleted:(NSInteger)BM;
+ (BOOL)hSubscribenextmErroroCompleted:(NSInteger)BM;
+ (BOOL)ISubscribeerror:(NSInteger)BM;
+ (BOOL)eSubscribecompleted:(NSInteger)BM;
+ (BOOL)TSubscribenextfError:(NSInteger)BM;
+ (BOOL)SSubscribeerrormCompleted:(NSInteger)BM;

@end
