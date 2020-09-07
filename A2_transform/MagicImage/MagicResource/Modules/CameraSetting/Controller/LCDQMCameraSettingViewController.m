#import "LCDQMCameraSettingViewController.h"
#import <Masonry.h>
#import "LCDQMSettingModel.h"
#import "UIColor+Additions.h"
#import "LCDQMSettingTableViewCell.h"
@interface LCDQMCameraSettingViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) NSDictionary<NSNumber *, NSArray<LCDQMSettingModel *> *> *LCDsettingModels;
@end
@implementation LCDQMCameraSettingViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self LCDsetupUI];
    [self LCDsetupDatas];
}
- (BOOL)LCDprefersStatusBarHidden
{
    return NO;
}
- (UIStatusBarStyle)LCDpreferredStatusBarStyle
{
    return UIStatusBarStyleDefault;
}
- (void)LCDsetupUI
{
    self.view.backgroundColor = [UIColor colorWithRGBHex:0xF7F8F8];
    UILabel *LCDtitle = [[UILabel alloc] initWithFrame:CGRectZero];
    LCDtitle.textAlignment = NSTextAlignmentCenter;
    LCDtitle.text = @"Setting";
    LCDtitle.font = [UIFont systemFontOfSize:18];
    [self.view addSubview:LCDtitle];
    [LCDtitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0);
        make.height.mas_equalTo(60);
        make.left.mas_equalTo(30);
        make.right.mas_equalTo(-30);
        make.top.mas_equalTo(15);
    }];
    UIButton *LCDbackBtn = [[UIButton alloc] initWithFrame:CGRectZero];
    [LCDbackBtn setImage:[UIImage imageNamed:@"qm_setting_back_btn"] forState:UIControlStateNormal];
    [self.view addSubview:LCDbackBtn];
    [LCDbackBtn addTarget:self action:@selector(LCDbackBtnTapped:) forControlEvents:UIControlEventTouchUpInside];
    [LCDbackBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(25);
        make.top.mas_equalTo(35);
        make.left.mas_offset(10);
    }];
    UIView *LCDtitleSlider = [[UIView alloc] initWithFrame:CGRectZero];
    LCDtitleSlider.backgroundColor = [UIColor colorWithRGBHex:0xebedee];
    [self.view addSubview:LCDtitleSlider];
    [LCDtitleSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1);
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(70);
    }];
    UITableView *LCDtableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    LCDtableView.rowHeight = 55;
    LCDtableView.dataSource = self;
    LCDtableView.delegate = self;
    LCDtableView.separatorColor = [UIColor colorWithRGBHex:0xebedee];
    [LCDtableView registerNib:[UINib nibWithNibName:@"LCDQMSettingTableViewCell" bundle:nil] forCellReuseIdentifier:@"LCDQMSettingTableViewCell"];
    [self.view addSubview:LCDtableView];
    [LCDtableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(10);
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(LCDtitleSlider.mas_bottom).mas_equalTo(0);
    }];
}
- (void)LCDsetupDatas
{
    _LCDsettingModels = [LCDQMSettingModel buildSettingModels];
}
#pragma mark - Event
- (void)LCDbackBtnTapped:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _LCDsettingModels.count;
}
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _LCDsettingModels[@(section)].count;;
}
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)LCDtableView cellForRowAtIndexPath:(nonnull NSIndexPath *)LCDindexPath
{
    LCDQMSettingModel *LCDmodel = _LCDsettingModels[@(LCDindexPath.section)][LCDindexPath.row];
    LCDQMSettingTableViewCell *LCDcell = [LCDtableView dequeueReusableCellWithIdentifier:@"LCDQMSettingTableViewCell"];
    [LCDcell setSettingModelType:LCDmodel.settingType];
    LCDcell.label.text = LCDmodel.name;
    LCDcell.switcher.on = LCDmodel.switchOn;
    return LCDcell;
}
- (CGFloat)tableView:(UITableView *)LCDtableView heightForHeaderInSection:(NSInteger)LCDsection{
    return 0.01;
}
- (UIView *)tableView:(UITableView *)LCDtableView viewForHeaderInSection:(NSInteger)LCDsection{
    return [UIView new];
}
- (void)tableView:(UITableView *)LCDtableView didSelectRowAtIndexPath:(NSIndexPath *)LCDindexPath
{
    [LCDtableView deselectRowAtIndexPath:LCDindexPath animated:NO];
}
@end
