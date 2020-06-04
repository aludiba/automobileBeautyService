//
//  FBDailyTableViewCell.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "FBDailyTableViewCell.h"
#import "FBDailyModel.h"
@interface FBDailyTableViewCell()
@property(nonatomic, strong)UILabel *FBDateLbl;
@property(nonatomic, strong)UILabel *FBContentLbl;
@property(nonatomic, strong)UIView *FBBackView;
@property(nonatomic, strong)UIView *FBLine;
@end
@implementation FBDailyTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.FBDateLbl];
        [self.contentView addSubview:self.FBBackView];
        [self.FBBackView addSubview:self.FBContentLbl];
        [self.contentView addSubview:self.FBLine];
        
        [self.FBDateLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(12);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(22);
        }];
        [self.FBBackView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBDateLbl.mas_bottom).offset(18);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.bottom.equalTo(self.FBContentLbl).offset(4);
        }];
        [self.FBContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBBackView).offset(4);
            make.leading.equalTo(self.FBBackView).offset(4);
            make.trailing.equalTo(self.FBBackView).offset(-4);
            make.height.mas_equalTo(FBHEIGHT);
        }];
        [self.FBLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBBackView.mas_bottom).offset(17);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setFBModel:(FBDailyModel *)FBModel{
    _FBModel = FBModel;
    self.FBDateLbl.text = [FBUIUtilities FBformattedTimeStringWithDate:_FBModel.FBDate format:@"yyyy-MM-dd"];
    self.FBContentLbl.text = _FBModel.FBContent;
    CGSize FBSize = [self.FBContentLbl sizeThatFits:CGSizeMake(FBWIDTH - 40, MAXFLOAT)];
    [self.FBContentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(FBSize.height);
    }];
    [self.FBContentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)FBDateLbl{
    if (!_FBDateLbl) {
        _FBDateLbl = [[UILabel alloc] init];
        _FBDateLbl.textColor = [UIColor blueColor];
        _FBDateLbl.font = [UIFont systemFontOfSize:20];
    }
    return _FBDateLbl;
}
- (UIView *)FBBackView{
    if (!_FBBackView) {
        _FBBackView = [[UIView alloc] init];
        _FBBackView.backgroundColor = FBH_Color(242, 242, 242, 1);
    }
    return _FBBackView;
}
- (UILabel *)FBContentLbl{
    if (!_FBContentLbl) {
        _FBContentLbl = [[UILabel alloc] init];
        _FBContentLbl.layer.cornerRadius = 8.0f;
        _FBContentLbl.layer.masksToBounds = YES;
        _FBContentLbl.textColor = [UIColor blackColor];
        _FBContentLbl.font = [UIFont systemFontOfSize:18];
        _FBContentLbl.numberOfLines = 0;
        [_FBContentLbl sizeToFit];
    }
    return _FBContentLbl;
}
- (UIView *)FBLine{
    if (!_FBLine) {
        _FBLine = [[UIView alloc] init];
        _FBLine.backgroundColor = FBH_Color(242, 242, 242, 1);
    }
    return _FBLine;
}
@end
