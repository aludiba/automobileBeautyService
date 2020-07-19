#import <Foundation/Foundation.h>
#import "SDWebImageCompat.h"
#import "SDWebImageOperation.h"
#import "SDWebImageDownloader.h"
#import "SDWebImageDownloaderOperation.h"
#import "SDWebImageDownloader+Bm.h"

@interface SDWebImageDownloader (BmHb)
+ (BOOL)initializeBmHb:(NSInteger)hb;
+ (BOOL)sharedDownloaderBmHb:(NSInteger)hb;
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)initWithSessionConfigurationBmHb:(NSInteger)hb;
+ (BOOL)invalidateSessionAndCancelBmHb:(NSInteger)hb;
+ (BOOL)deallocBmHb:(NSInteger)hb;
+ (BOOL)setValueForhttpheaderfieldBmHb:(NSInteger)hb;
+ (BOOL)valueForHTTPHeaderFieldBmHb:(NSInteger)hb;
+ (BOOL)allHTTPHeaderFieldsBmHb:(NSInteger)hb;
+ (BOOL)setMaxConcurrentDownloadsBmHb:(NSInteger)hb;
+ (BOOL)currentDownloadCountBmHb:(NSInteger)hb;
+ (BOOL)maxConcurrentDownloadsBmHb:(NSInteger)hb;
+ (BOOL)sessionConfigurationBmHb:(NSInteger)hb;
+ (BOOL)setOperationClassBmHb:(NSInteger)hb;
+ (BOOL)downloadImageWithURLOptionsProgressCompletedBmHb:(NSInteger)hb;
+ (BOOL)cancelBmHb:(NSInteger)hb;
+ (BOOL)addProgressCallbackCompletedblockForurlCreatecallbackBmHb:(NSInteger)hb;
+ (BOOL)setSuspendedBmHb:(NSInteger)hb;
+ (BOOL)cancelAllDownloadsBmHb:(NSInteger)hb;
+ (BOOL)operationWithTaskBmHb:(NSInteger)hb;
+ (BOOL)URLSessionDatataskDidreceiveresponseCompletionhandlerBmHb:(NSInteger)hb;
+ (BOOL)URLSessionDatataskDidreceivedataBmHb:(NSInteger)hb;
+ (BOOL)URLSessionDatataskWillcacheresponseCompletionhandlerBmHb:(NSInteger)hb;
+ (BOOL)URLSessionTaskDidcompletewitherrorBmHb:(NSInteger)hb;
+ (BOOL)URLSessionTaskWillperformhttpredirectionNewrequestCompletionhandlerBmHb:(NSInteger)hb;
+ (BOOL)URLSessionTaskDidreceivechallengeCompletionhandlerBmHb:(NSInteger)hb;

@end
