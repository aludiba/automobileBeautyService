#import <Foundation/Foundation.h>
#import "MIIPAPurchase.h"
#import <StoreKit/StoreKit.h>
#import <StoreKit/SKPaymentTransaction.h>

@interface MIIPAPurchase (Bm)
+ (BOOL)managerBm:(NSInteger)BM;
+ (BOOL)startManagerBm:(NSInteger)BM;
+ (BOOL)stopManagerBm:(NSInteger)BM;
+ (BOOL)buyProductWithProductIDPayresultBm:(NSInteger)BM;
+ (BOOL)removeAllUncompleteTransactionsBeforeNewPurchaseBm:(NSInteger)BM;
+ (BOOL)requestProductInfoBm:(NSInteger)BM;
+ (BOOL)productsRequestDidreceiveresponseBm:(NSInteger)BM;
+ (BOOL)requestDidfailwitherrorBm:(NSInteger)BM;
+ (BOOL)requestDidFinishBm:(NSInteger)BM;
+ (BOOL)paymentQueueUpdatedtransactionsBm:(NSInteger)BM;
+ (BOOL)completeTransactionBm:(NSInteger)BM;
+ (BOOL)failedTransactionBm:(NSInteger)BM;
+ (BOOL)restoreTransactionBm:(NSInteger)BM;
+ (BOOL)getAndSaveReceiptBm:(NSInteger)BM;
+ (BOOL)getPlatformAmountInfoWithOrderBm:(NSInteger)BM;
+ (BOOL)getCurrentZoneTimeBm:(NSInteger)BM;
+ (BOOL)sendAppStoreRequestBuyWithReceiptUseridPaltformorderTransWithBm:(NSInteger)BM;

@end
