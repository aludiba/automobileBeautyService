#import "LCDMITagsCell.h"
#import "LCDMITagsModel.h"
@interface LCDMITagsCell ()
@property (nonatomic, strong) UIImageView * LCDiconImageView;
@property (nonatomic, strong) UILabel * LCDtitleLabel;
@end
@implementation LCDMITagsCell
- (instancetype)initWithStyle:(UITableViewCellStyle)LCDstyle reuseIdentifier:(NSString *)LCDreuseIdentifier{
    if (self = [super initWithStyle:LCDstyle reuseIdentifier:LCDreuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = UIColor.clearColor;
        UIImageView * LCDbgImageView = [[UIImageView alloc] init];
        LCDbgImageView.layer.cornerRadius = 8;
        LCDbgImageView.layer.masksToBounds = YES;
        LCDbgImageView.backgroundColor = UIColor.whiteColor;
        [self.contentView addSubview:LCDbgImageView];
        LCDbgImageView.sd_layout
        .leftSpaceToView(self.contentView, 10)
        .rightSpaceToView(self.contentView, 10)
        .topSpaceToView(self.contentView, 5)
        .bottomSpaceToView(self.contentView, 0);
        self.LCDiconImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.LCDiconImageView];
        self.LCDiconImageView.sd_layout
        .leftSpaceToView(LCDbgImageView.mas_left, 15)
        .centerYEqualToView(LCDbgImageView)
        .widthIs(30)
        .heightEqualToWidth();
        self.LCDtitleLabel = [[UILabel alloc] init];
        self.LCDtitleLabel.font = [UIFont systemFontOfSize:16];
        self.LCDtitleLabel.textColor = UIColor.blackColor;
        [LCDbgImageView addSubview:self.LCDtitleLabel];
        self.LCDtitleLabel.sd_layout
        .leftSpaceToView(self.LCDiconImageView.mas_right, 40)
        .centerYEqualToView(LCDbgImageView)
        .autoHeightRatio(0);
        [self.LCDtitleLabel setSingleLineAutoResizeWithMaxWidth:ScreenWidth];
        UIImageView * LCDarrowImageView = [[UIImageView alloc] initWithImage:LCDImage(@"PEArrow")];
        [LCDbgImageView addSubview:LCDarrowImageView];
        LCDarrowImageView.sd_layout
        .rightSpaceToView(LCDbgImageView, 5)
        .centerYEqualToView(LCDbgImageView)
        .widthIs(25)
        .heightEqualToWidth();
    }
    return self;
}
- (void)setLCDmodel:(LCDMITagsModel *)LCDmodel{
    _LCDmodel = LCDmodel;
    [self.LCDiconImageView sd_setImageWithURL:[NSURL URLWithString:LCDmodel.icon_url]];
    self.LCDtitleLabel.text = LCDmodel.title;
}
@end
