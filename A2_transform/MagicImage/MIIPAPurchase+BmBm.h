#import <Foundation/Foundation.h>
#import "MIIPAPurchase.h"
#import <StoreKit/StoreKit.h>
#import <StoreKit/SKPaymentTransaction.h>
#import "MIIPAPurchase+Bm.h"

@interface MIIPAPurchase (BmBm)
+ (BOOL)managerBmBm:(NSInteger)BM;
+ (BOOL)startManagerBmBm:(NSInteger)BM;
+ (BOOL)stopManagerBmBm:(NSInteger)BM;
+ (BOOL)buyProductWithProductIDPayresultBmBm:(NSInteger)BM;
+ (BOOL)removeAllUncompleteTransactionsBeforeNewPurchaseBmBm:(NSInteger)BM;
+ (BOOL)requestProductInfoBmBm:(NSInteger)BM;
+ (BOOL)productsRequestDidreceiveresponseBmBm:(NSInteger)BM;
+ (BOOL)requestDidfailwitherrorBmBm:(NSInteger)BM;
+ (BOOL)requestDidFinishBmBm:(NSInteger)BM;
+ (BOOL)paymentQueueUpdatedtransactionsBmBm:(NSInteger)BM;
+ (BOOL)completeTransactionBmBm:(NSInteger)BM;
+ (BOOL)failedTransactionBmBm:(NSInteger)BM;
+ (BOOL)restoreTransactionBmBm:(NSInteger)BM;
+ (BOOL)getAndSaveReceiptBmBm:(NSInteger)BM;
+ (BOOL)getPlatformAmountInfoWithOrderBmBm:(NSInteger)BM;
+ (BOOL)getCurrentZoneTimeBmBm:(NSInteger)BM;
+ (BOOL)sendAppStoreRequestBuyWithReceiptUseridPaltformorderTransWithBmBm:(NSInteger)BM;

@end
