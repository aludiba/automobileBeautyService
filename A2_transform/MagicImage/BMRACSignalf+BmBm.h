#import <Foundation/Foundation.h>
#import "BMRACSignalf.h"
#import "BMRACSignalf+Bm.h"

@interface BMRACSignalf (BmBm)
+ (BOOL)VSubscribeBmBm:(NSInteger)BM;
+ (BOOL)BSubscribenextBmBm:(NSInteger)BM;
+ (BOOL)mSubscribenextsCompletedBmBm:(NSInteger)BM;
+ (BOOL)hSubscribenextmErroroCompletedBmBm:(NSInteger)BM;
+ (BOOL)ISubscribeerrorBmBm:(NSInteger)BM;
+ (BOOL)eSubscribecompletedBmBm:(NSInteger)BM;
+ (BOOL)TSubscribenextfErrorBmBm:(NSInteger)BM;
+ (BOOL)SSubscribeerrormCompletedBmBm:(NSInteger)BM;

@end
