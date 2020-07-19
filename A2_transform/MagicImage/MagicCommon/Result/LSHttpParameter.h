#ifndef LSHttpParameter_h
#define LSHttpParameter_h
#ifdef DEBUG 
#define MyLog(...) NSLog(__VA_ARGS__)
#else 
#define MyLog(...)
#endif
#define GetAuditInfo @"common/softUpdateV2"
#define FreeCoinsList @"common/freeCoinsList"
#define PostsList @"analytics/postsList"
#define RankList @"rank/rankList"
#define AddErrorlog @"common/addErrorLog"
#define GetGrowthList @"Analytics/getGrowthList"
#define GetHeader @"account/getHeader"
#define GetAccount @"accountnew/getAccount"
#define GetUserName @"accountnew/getInsUserName"
#define GetUserDetail @"user/userDetail"
#define AccountMedias @"accountnew/accountMedias"
#define GoodList @"goods/goodsList"
#define GoldList @"goods/goldList"
#define BuyGoods @"pay/buyGoods" 
#define BuyGoldMakeOrder @"pay/buyGoldMakeOrder" 
#define OrderList @"order/orderList"
#define SignAddCoins @"user/signAddCoins"
#define BuyGoldAppleCallback @"pay/buyGoldAppleCallback"
#define SoftUpdate @"common/softUpdate" 
#define FeedBackAdd @"user/feedBackAdd" 
#define FaqList @"user/faqList"
#define TagsList @"user/tagsList"
#define AppMessageList @"user/appMessageLogList"
#define BindRegistration @"user/bindRegistrationIDtoUser"
#define SignAddCoins @"user/signAddCoins"
#define FreeCoinsAdd @"freeCoins/freeCoinsAdd"
#define BuyGoodsEdit @"pay/buyGoodsEdit"
#define mark --------sh
#define FavoritesAdd @"sh.v2.favorites/favoritesAdd"
#define FavoritesList @"sh.v2.favorites/favoritesList"
#define FavoritesEdit @"sh.v2.favorites/favoritesEdit"
#define FavoritesDel @"sh.v2.favorites/favoritesDel"
#define SHTagsList @"sh.v2.user/tagsList"
#define SearchList @"sh.user/searchList"
#define SHUserDetail @"sh.v2.user/userDetail"
#define AddUserPeanut @"sh.v2.user/addUserPeanut"
#define PicList @"sh.v2.pic/picList"
#define SHRegister @"sh.v2.user/register"
#define SHLogin @"sh.v2.user/login"
#endif 
