#import "LCDMIHomeView.h"
#import "UIImage+GradientColor.h"
#import "UIColor+Hex.h"
@implementation LCDMIHomeView
- (instancetype)initWithFrame:(CGRect)LCDframe{
    if (self = [super initWithFrame:LCDframe]) {
        CGFloat LCDw = (ScreenWidth-20)/2;
        CGFloat LCDh = LCDw * 3/5-5;
        NSArray *LCDtitleArray = @[@"Camera",@"Sticker",@"Tailor",@"Filter"];
        NSArray *LCDimageArray = @[@"CAMERA",@"STICKER",@"TAILOR",@"FILTER"];
        NSArray *LCDcolorArray = @[[UIColor redColor],[UIColor orangeColor],[UIColor blueColor],[UIColor greenColor]];
        NSArray *LCDcontentArray = @[@"Quick beautiful",@"Rapid concise",@"Optional size",@"Scene change"];
        UIColor *LCDColor = [UIColor colorWithHexString:@"#EA5455"];
        UIColor *LCDColor1 = [UIColor colorWithHexString:@"#7367F0"];
        UIColor *LCDColor2 = [UIColor colorWithHexString:@"#F6416C"];
        UIColor *LCDColor3 = [UIColor colorWithHexString:@"#F8D800"];
        for (NSInteger LCDi = 0; LCDi < 4; LCDi++) {
            UIView * LCDbgView = [[UIView alloc] initWithFrame:CGRectMake((LCDi%2) * LCDw, (LCDi / 2) * LCDh, LCDw, LCDh)];
            [self addSubview:LCDbgView];
            
            UIImageView *LCDiconImageView = [[UIImageView alloc] initWithImage:LCDImage(@"")];
            LCDiconImageView.backgroundColor = LCDcolorArray[LCDi];
            LCDiconImageView.layer.cornerRadius = 10;
            LCDiconImageView.tag = 100 + LCDi;
            LCDiconImageView.userInteractionEnabled = YES;
            UITapGestureRecognizer *LCDtap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(LCDtap:)];
            [LCDiconImageView addGestureRecognizer:LCDtap];
            [LCDbgView addSubview:LCDiconImageView];
            LCDiconImageView.sd_layout
            .leftSpaceToView(LCDbgView, 5)
            .rightSpaceToView(LCDbgView, 5)
            .bottomSpaceToView(LCDbgView, 0)
            .topSpaceToView(LCDbgView, 18);
            if (LCDi == 0) {
                [LCDiconImageView setBackgroundColor:LCDColor3];
            }else if (LCDi == 1){
                [LCDiconImageView setBackgroundColor:LCDColor2];
            }else if (LCDi == 2){
                [LCDiconImageView setBackgroundColor:LCDColor1];
            }else if (LCDi == 3){
                [LCDiconImageView setBackgroundColor:LCDColor];
            }
            
            UILabel *LCDtitleLabel = [[UILabel alloc] init];
            LCDtitleLabel.font = FontBoldSize(18, ScreenWidth);
            LCDtitleLabel.textColor = UIColor.whiteColor;
            LCDtitleLabel.text = LCDtitleArray[LCDi];
            [LCDiconImageView addSubview:LCDtitleLabel];
            LCDtitleLabel.sd_layout
            .leftSpaceToView(LCDiconImageView, ScareValue(10, ScreenWidth))
            .centerYEqualToView(LCDiconImageView).offset(-10)
            .autoHeightRatio(0);
            [LCDtitleLabel setSingleLineAutoResizeWithMaxWidth:180];
            UILabel *LCDcontentLabel = [[UILabel alloc] init];
            LCDcontentLabel.textColor = UIColor.whiteColor;
            LCDcontentLabel.text = LCDcontentArray[LCDi];
            LCDcontentLabel.font = FontSize(12, ScreenWidth);
            [LCDiconImageView addSubview:LCDcontentLabel];
            LCDcontentLabel.sd_layout
            .leftEqualToView(LCDtitleLabel)
            .centerYEqualToView(LCDiconImageView).offset(10)
            .autoHeightRatio(0);
            [LCDcontentLabel setSingleLineAutoResizeWithMaxWidth:180];
            UIImageView *LCDleftImageView = [[UIImageView alloc] initWithImage:LCDImage(LCDimageArray[LCDi])];
            LCDleftImageView.layer.cornerRadius = 5;
            LCDleftImageView.layer.masksToBounds = YES;
            [LCDiconImageView addSubview:LCDleftImageView];
            LCDleftImageView.sd_layout
            .rightSpaceToView(LCDiconImageView, 7)
            .centerYEqualToView(LCDiconImageView)
            .widthIs(ScareValue(55, ScreenWidth))
            .heightEqualToWidth();
            if (LCDi == 0) {
                UIImageView *LCDhotImageView = [[UIImageView alloc] initWithImage:LCDImage(@"c")];
                [LCDbgView addSubview:LCDhotImageView];
                LCDhotImageView.sd_layout
                .rightSpaceToView(LCDbgView, 7)
                .topEqualToView(LCDiconImageView).offset(-18)
                .widthIs(ScareValue(40, ScreenWidth))
                .heightIs(ScareValue(25, ScreenWidth));
            }
        }
    }
    return self;
}
- (void)LCDtap:(UITapGestureRecognizer *)tap{
    if (self.block) {
        self.block(tap.view.tag-100);
    }
}
@end
