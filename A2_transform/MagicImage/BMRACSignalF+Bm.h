#import <Foundation/Foundation.h>
#import "BMRACSignalf.h"

@interface BMRACSignalf (Bm)
+ (BOOL)VSubscribeBm:(NSInteger)BM;
+ (BOOL)BSubscribenextBm:(NSInteger)BM;
+ (BOOL)mSubscribenextsCompletedBm:(NSInteger)BM;
+ (BOOL)hSubscribenextmErroroCompletedBm:(NSInteger)BM;
+ (BOOL)ISubscribeerrorBm:(NSInteger)BM;
+ (BOOL)eSubscribecompletedBm:(NSInteger)BM;
+ (BOOL)TSubscribenextfErrorBm:(NSInteger)BM;
+ (BOOL)SSubscribeerrormCompletedBm:(NSInteger)BM;

@end
