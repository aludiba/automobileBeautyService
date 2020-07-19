#import <Foundation/Foundation.h>
#import "BMRACSignalf.h"
#import "BMRACSignalf+Bm.h"
#import "BMRACSignalf+BmBm.h"

@interface BMRACSignalf (BmBmHb)
+ (BOOL)VSubscribeBmBmHb:(NSInteger)hb;
+ (BOOL)BSubscribenextBmBmHb:(NSInteger)hb;
+ (BOOL)mSubscribenextsCompletedBmBmHb:(NSInteger)hb;
+ (BOOL)hSubscribenextmErroroCompletedBmBmHb:(NSInteger)hb;
+ (BOOL)ISubscribeerrorBmBmHb:(NSInteger)hb;
+ (BOOL)eSubscribecompletedBmBmHb:(NSInteger)hb;
+ (BOOL)TSubscribenextfErrorBmBmHb:(NSInteger)hb;
+ (BOOL)SSubscribeerrormCompletedBmBmHb:(NSInteger)hb;

@end
