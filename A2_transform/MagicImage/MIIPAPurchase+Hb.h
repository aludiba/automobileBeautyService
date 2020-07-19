#import <Foundation/Foundation.h>
#import "MIIPAPurchase.h"
#import <StoreKit/StoreKit.h>
#import <StoreKit/SKPaymentTransaction.h>

@interface MIIPAPurchase (Hb)
+ (BOOL)managerHb:(NSInteger)hb;
+ (BOOL)startManagerHb:(NSInteger)hb;
+ (BOOL)stopManagerHb:(NSInteger)hb;
+ (BOOL)buyProductWithProductIDPayresultHb:(NSInteger)hb;
+ (BOOL)removeAllUncompleteTransactionsBeforeNewPurchaseHb:(NSInteger)hb;
+ (BOOL)requestProductInfoHb:(NSInteger)hb;
+ (BOOL)productsRequestDidreceiveresponseHb:(NSInteger)hb;
+ (BOOL)requestDidfailwitherrorHb:(NSInteger)hb;
+ (BOOL)requestDidFinishHb:(NSInteger)hb;
+ (BOOL)paymentQueueUpdatedtransactionsHb:(NSInteger)hb;
+ (BOOL)completeTransactionHb:(NSInteger)hb;
+ (BOOL)failedTransactionHb:(NSInteger)hb;
+ (BOOL)restoreTransactionHb:(NSInteger)hb;
+ (BOOL)getAndSaveReceiptHb:(NSInteger)hb;
+ (BOOL)getPlatformAmountInfoWithOrderHb:(NSInteger)hb;
+ (BOOL)getCurrentZoneTimeHb:(NSInteger)hb;
+ (BOOL)sendAppStoreRequestBuyWithReceiptUseridPaltformorderTransWithHb:(NSInteger)hb;

@end
