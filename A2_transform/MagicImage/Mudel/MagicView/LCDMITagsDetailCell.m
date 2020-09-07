#import "LCDMITagsDetailCell.h"
#import "LCDMITagsModel.h"
@interface LCDMITagsDetailCell ()
@property (nonatomic, strong) UILabel * LCDtitleLabel;
@property (nonatomic, strong) UILabel * LCDcontentLabel;
@end
@implementation LCDMITagsDetailCell
- (instancetype)initWithStyle:(UITableViewCellStyle)LCDstyle reuseIdentifier:(NSString *)LCDreuseIdentifier{
    if (self = [super initWithStyle:LCDstyle reuseIdentifier:LCDreuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = UIColor.clearColor;
        UIImageView *LCDbgImageView = [[UIImageView alloc] init];
        LCDbgImageView.backgroundColor = UIColor.whiteColor;
        LCDbgImageView.layer.cornerRadius = 10;
        LCDbgImageView.layer.masksToBounds = YES;
        [self.contentView addSubview:LCDbgImageView];
        LCDbgImageView.sd_layout
        .leftSpaceToView(self.contentView, 5)
        .rightSpaceToView(self.contentView, 5)
        .topSpaceToView(self.contentView, 5)
        .bottomSpaceToView(self.contentView, 5);
        self.LCDtitleLabel = [[UILabel alloc] init];
        self.LCDtitleLabel.textColor = UIColor.blackColor;
        self.LCDtitleLabel.font = FontBoldSize(18, ScreenWidth);
        [self.contentView addSubview:self.LCDtitleLabel];
        self.LCDtitleLabel.sd_layout
        .leftSpaceToView(self.contentView, 15)
        .autoHeightRatio(0)
        .rightSpaceToView(self.contentView, 80)
        .topSpaceToView(self.contentView, 15);
        self.LCDcontentLabel = [[UILabel alloc] init];
        self.LCDcontentLabel.textColor = UIColor.grayColor;
        self.LCDcontentLabel.font = FontBoldSize(16, ScreenWidth);
        [self.contentView addSubview:self.LCDcontentLabel];
        self.LCDcontentLabel.sd_layout
        .leftSpaceToView(self.contentView, 15)
        .rightSpaceToView(self.contentView, 15)
        .topSpaceToView(self.LCDtitleLabel, 10)
        .autoHeightRatio(0);
        UIButton *LCDcopyBtn = [[UIButton alloc] init];
        LCDcopyBtn.tag = 300;
        [LCDcopyBtn setTitle:@"Copy" forState:UIControlStateNormal];
        [LCDcopyBtn setTitleColor:UIColor.orangeColor forState:UIControlStateNormal];
        [LCDcopyBtn addTarget:self action:@selector(LCDcopyBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
        LCDcopyBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        LCDcopyBtn.layer.borderColor = UIColor.orangeColor.CGColor;
        LCDcopyBtn.layer.borderWidth = 0.5;
        LCDcopyBtn.layer.cornerRadius = 8;
        LCDcopyBtn.layer.masksToBounds = YES;
        [self.contentView addSubview:LCDcopyBtn];
        LCDcopyBtn.sd_layout
        .rightSpaceToView(self.contentView, 15)
        .centerYEqualToView(self.LCDtitleLabel)
        .widthIs(60)
        .heightIs(25);
        UIButton *LCDsharBtn = [[UIButton alloc] init];
        [LCDsharBtn setTitle:@"Share" forState:UIControlStateNormal];
        LCDsharBtn.tag = 300+1;
        [LCDsharBtn setTitleColor:UIColor.orangeColor forState:UIControlStateNormal];
        [LCDsharBtn addTarget:self action:@selector(LCDcopyBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
        LCDsharBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        LCDsharBtn.layer.borderColor = UIColor.orangeColor.CGColor;
        LCDsharBtn.layer.borderWidth = 0.5;
        LCDsharBtn.layer.cornerRadius = 8;
        LCDsharBtn.layer.masksToBounds = YES;
        [self.contentView addSubview:LCDsharBtn];
        LCDsharBtn.sd_layout
        .rightSpaceToView(LCDcopyBtn, 5)
        .centerYEqualToView(self.LCDtitleLabel)
        .widthIs(60)
        .heightIs(25);
        UIView *LCDlineView = [[UIView alloc] init];
        LCDlineView.backgroundColor = UIColor.groupTableViewBackgroundColor;
        [self.contentView addSubview:LCDlineView];
        LCDlineView.sd_layout
        .leftSpaceToView(self.contentView, 15)
        .rightSpaceToView(self.contentView, 15)
        .bottomEqualToView(self.contentView)
        .heightIs(1);
        [self setupAutoHeightWithBottomView:self.LCDcontentLabel bottomMargin:10];
    }
    return self;
}
- (void)LCDcopyBtnClicked:(UIButton *)LCDsender{
    if (self.block) {
        self.block(LCDsender.tag -300);
    }
}
- (void)setLCDmodel:(LCDMITagsModel *)LCDmodel{
    self.LCDtitleLabel.text = LCDmodel.title;
    self.LCDcontentLabel.text = LCDmodel.content;
}
@end
