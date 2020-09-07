#import "LCDMIMoreVC.h"
#import "LCDMIMoreHeaderView.h"
#import "LCDMIMoreCell.h"
#import "LCDMIFeedbackVC.h"
#import "LCDMILoginVC.h"
@interface LCDMIMoreVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *LCDtableView;
@property (nonatomic, strong) NSArray *LCDtitleArray;
@property (nonatomic, strong) NSArray *LCDimageArray;
@property (nonatomic, strong) LCDMIMoreHeaderView *LCDheaderView;
@end
@implementation LCDMIMoreVC
- (UITableView *)LCDtableView{
    if (!_LCDtableView) {
        _LCDtableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _LCDtableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _LCDtableView.backgroundColor = [UIColor cyanColor];
        _LCDtableView.delegate = self;
        _LCDtableView.dataSource = self;
    }
    return _LCDtableView;
}
- (void)viewWillAppear:(BOOL)LCDanimated{
    [super viewWillAppear:LCDanimated];
    [self.navigationController setNavigationBarHidden:YES];
}
- (void)viewWillDisappear:(BOOL)LCDanimated{
    [super viewWillDisappear:LCDanimated];
    [self.navigationController setNavigationBarHidden:NO];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:self.LCDtableView];
    self.LCDtableView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view).offset(-StatusBarHeight)
    .bottomEqualToView(self.view);
    LCDMIMoreHeaderView *LCDheaderView = [[LCDMIMoreHeaderView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScareValue(160, ScreenWidth))];
    self.LCDheaderView = LCDheaderView;
    [LCDheaderView LCDupdateViews];
    if (@available(iOS 9.0, *)) {
        LCDheaderView.backgroundColor = [UIColor systemPurpleColor];
    } else {
        LCDheaderView.backgroundColor = [UIColor purpleColor];
    }
    LCDheaderView.block = ^{
        if (!UserId) {
            LCDMILoginVC *LCDlogVC = [[LCDMILoginVC alloc] init];
            UINavigationController *LCDnavi = [[UINavigationController alloc] initWithRootViewController:LCDlogVC];
            [self presentViewController:LCDnavi animated:YES completion:nil];
        }
    };
    self.LCDtableView.tableHeaderView = LCDheaderView;
    UILabel *LCDbottomLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 40)];
    LCDbottomLabel.textColor = [UIColor purpleColor];
    LCDbottomLabel.textAlignment = NSTextAlignmentCenter;
    LCDbottomLabel.font = [UIFont boldSystemFontOfSize:16];
    NSDictionary *LCDinfoDictionary = [[NSBundle mainBundle] infoDictionary];
    LCDbottomLabel.text = [NSString stringWithFormat:@"Version:%@",[LCDinfoDictionary objectForKey:@"CFBundleShortVersionString"]];
    self.LCDtableView.tableFooterView = LCDbottomLabel;
    self.LCDtitleArray = @[@[@"Feed Back",@"Contact Us",@"Share"],@[@"Terms Of Service",@"Privacy Policy"]];
    self.LCDimageArray = @[@[@"LCD_feed",@"LCD_contact",@"LCD_share"],@[@"LCD_Arrow",@"LCD_Arrow"]];
    [NotifiCenter addObserver:self selector:@selector(LCDloadData) name:@"loginSuccess" object:nil];
}
- (void)LCDloadData{
    [self.LCDheaderView LCDupdateViews];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.LCDtitleArray.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.LCDimageArray[section] count];
}
- (UITableViewCell *)tableView:(UITableView *)LCDtableView cellForRowAtIndexPath:(NSIndexPath *)LCDindexPath{
    LCDMIMoreCell *LCDcell = [LCDtableView dequeueReusableCellWithIdentifier:@"LCDMIMoreCell"];
    if (!LCDcell) {
        LCDcell = [[LCDMIMoreCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"LCDMIMoreCell"];
    }
    LCDcell.LCDtitleLabel.text = self.LCDtitleArray[LCDindexPath.section][LCDindexPath.row];
    LCDcell.LCDarrowView.image = LCDImage(self.LCDimageArray[LCDindexPath.section][LCDindexPath.row]);
    return LCDcell;
}
- (void)tableView:(UITableView *)LCDtableView didSelectRowAtIndexPath:(NSIndexPath *)LCDindexPath{
    if (LCDindexPath.section == 0) {
        if (LCDindexPath.row == 0) {
            LCDMIFeedbackVC *LCDfeedback = [[LCDMIFeedbackVC alloc] init];
            [self.navigationController pushViewController:LCDfeedback animated:YES];
        }else if (LCDindexPath.row == 1){
            NSString *LCDmailStr = [NSString stringWithFormat:@"mailto://%@",@"windy_aludiba@163.com"];
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:LCDmailStr]];
        }else{
            [self LCDshare];
        }
    }else{
        if (LCDindexPath.row == 0) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@/index/newp.picphotopicda2a/termsDetail",LSBaseUrl]] ];
        }else if (LCDindexPath.row == 1){
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@/index/newp.picphotopicda2a/privacyDetail",LSBaseUrl]] ];
        }else{
            [UserDefaults removeObjectForKey:@"user_id"];
            [UserDefaults synchronize];
            [[NSNotificationCenter  defaultCenter] postNotificationName:@"loginOut" object:nil];
            LCDMILoginVC *LCDlogVC = [[LCDMILoginVC alloc] init];
            UINavigationController *LCDnavi = [[UINavigationController alloc] initWithRootViewController:LCDlogVC];
            [self presentViewController:LCDnavi animated:YES completion:nil];
            [self.LCDheaderView LCDupdateViews];
        }
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 55;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.01;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [UIView new];
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 30;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return [UIView new];
}
- (void)LCDshare{
    NSString *LCDtextToShare;
    NSString *LCDcontextShare;
    UIImage *LCDimageToShare;
    LCDtextToShare = @"Get More Pic Collage Edit";
    LCDcontextShare = @"https://www.apple.com/cn/itunes";
    LCDimageToShare = [UIImage imageNamed:@"AppIcon"];
    NSURL *LCDurlToShare = [NSURL URLWithString:LCDcontextShare];
    NSArray *LCDactivityItems = @[LCDtextToShare,LCDimageToShare,LCDurlToShare];
    NSArray *LCDactivities = @[];
    UIActivityViewController *LCDactivityVC = [[UIActivityViewController alloc] initWithActivityItems:LCDactivityItems applicationActivities:LCDactivities];
    if([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0){
        UIActivityViewControllerCompletionWithItemsHandler LCDmyBlock = ^(NSString *LCDactivityType,BOOL LCDcompleted,NSArray *LCDreturnedItems,NSError *LCDactivityError)
        {
            if (LCDcompleted)
            {
            }
            else
            {
            }
        };
        LCDactivityVC.completionWithItemsHandler = LCDmyBlock;
    }else{
        UIActivityViewControllerCompletionHandler LCDmyBlock = ^(NSString *LCDactivityType,BOOL LCDcompleted)
        {
            if (LCDcompleted)
            {
            }
            else
            {
            }
        };
        LCDactivityVC.completionHandler = LCDmyBlock;
    }
    LCDactivityVC.excludedActivityTypes = @[];
    [self presentViewController:LCDactivityVC animated:YES completion:nil];
}
@end
