#import <TargetConditionals.h>
#ifndef _UIKIT_AFNETWORKING_
    #define _UIKIT_AFNETWORKING_
#if TARGET_OS_IOS || TARGET_OS_TV
    #import "AFAutoPurgingImageCache.h"
    #import "AFImageDownloader.h"
    #import "UIActivityIndicatorView+AFNetworking.h"
    #import "UIButton+AFNetworking.h"
    #import "UIImageView+AFNetworking.h"
    #import "UIProgressView+AFNetworking.h"
#endif
#if TARGET_OS_IOS
    #import "AFNetworkActivityIndicatorManager.h"
    #import "UIRefreshControl+AFNetworking.h"
    #import "WKWebView+AFNetworking.h"
#endif
#endif 
