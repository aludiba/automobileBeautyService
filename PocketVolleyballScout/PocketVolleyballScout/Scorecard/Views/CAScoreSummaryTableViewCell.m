//
//  CAScoreSummaryTableViewCell.m
//  PocketVolleyballScore
//
//  Created by bykj on 2019/11/5.
//  Copyright © 2019 com. All rights reserved.
//

#import "CAScoreSummaryTableViewCell.h"
#import "CAScorecardViewModel.h"

@interface CAScoreSummaryTableViewCell()
@property(nonatomic, strong)UILabel *CAFirstTitleLbl;//第一局标题
@property(nonatomic, strong)UILabel *CAFirstContentLbl;//第一局内容
@property(nonatomic, strong)UILabel *CASecondTitleLbl;//第二局标题
@property(nonatomic, strong)UILabel *CASecondContentLbl;//第二局内容
@property(nonatomic, strong)UILabel *CAThirdTitleLbl;//第三局标题
@property(nonatomic, strong)UILabel *CAThirdContentLbl;//第三局内容
@property(nonatomic, strong)UILabel *CAFourthTitleLbl;//第四局标题
@property(nonatomic, strong)UILabel *CAFourthContentLbl;//第四局内容
@property(nonatomic, strong)UILabel *CAFifthTitleLbl;//第五局标题
@property(nonatomic, strong)UILabel *CAFifthContentLbl;//第五局内容
@property(nonatomic, strong)UILabel *CATotalScoreTitleLbl;//总比分标题
@property(nonatomic, strong)UILabel *CATotalScoreContentLbl;//总比分内容
@end

@implementation CAScoreSummaryTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor systemGreenColor];
        [self.contentView addSubview:self.CAFirstTitleLbl];
        [self.contentView addSubview:self.CAFirstContentLbl];
        [self.contentView addSubview:self.CASecondTitleLbl];
        [self.contentView addSubview:self.CASecondContentLbl];
        [self.contentView addSubview:self.CAThirdTitleLbl];
        [self.contentView addSubview:self.CAThirdContentLbl];
        [self.contentView addSubview:self.CAFourthTitleLbl];
        [self.contentView addSubview:self.CAFourthContentLbl];
        [self.contentView addSubview:self.CAFifthTitleLbl];
        [self.contentView addSubview:self.CAFifthContentLbl];
        [self.contentView addSubview:self.CATotalScoreTitleLbl];
        [self.contentView addSubview:self.CATotalScoreContentLbl];
        
        [self.CAFirstTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.contentView).offset(10);
            make.width.mas_equalTo(CAWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.CAFirstContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.CAFirstTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
           make.top.equalTo(self.contentView).offset(10);
                make.height.mas_equalTo(20);
        }];
        [self.CASecondTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.CAFirstTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(CAWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.CASecondContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.CASecondTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.CAFirstContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.CAThirdTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.CASecondTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(CAWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.CAThirdContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.CAThirdTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.CASecondContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.CAFourthTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.CAThirdTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(CAWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.CAFourthContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.CAFourthTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.CAThirdContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.CAFifthTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.CAFourthTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(CAWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.CAFifthContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.CAFifthTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.CAFourthContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.CATotalScoreTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.CAFifthTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(CAWIDTH);
            make.height.mas_equalTo(20);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
        [self.CATotalScoreContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.CATotalScoreTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.CAFifthContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
    }
    return self;
}
- (void)setCAModel:(CAScorecardViewModel *)CAModel{
    _CAModel = CAModel;
    for (int i = 0; i < _CAModel.CABureauPointsArray.count; i++) {
        CABureauPointsModel *bureauPointsModel = _CAModel.CABureauPointsArray[i];
        if (bureauPointsModel.CAIndex == 0) {
            if (bureauPointsModel.CAtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.CAFirstContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.CAtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.CAIndex == 1){
            if (bureauPointsModel.CAtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.CASecondContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.CAtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.CAIndex == 2){
            if (bureauPointsModel.CAtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.CAThirdContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.CAtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.CAIndex == 3){
            if (bureauPointsModel.CAtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.CAFourthContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.CAtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.CAIndex == 4){
            if (bureauPointsModel.CAtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.CAFifthContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.CAtBureauScoreString,deadEvenString];
            }
        }
    }
    if (_CAModel.totalAcoreString.length) {
        self.CATotalScoreContentLbl.text = _CAModel.totalAcoreString;
    }
    CGSize size = [self.CAFirstTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.CAFirstTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.CAFirstTitleLbl layoutIfNeeded];
    size = [self.CASecondTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.CASecondTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.CASecondTitleLbl layoutIfNeeded];
    size = [self.CAThirdTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.CAThirdTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.CAThirdTitleLbl layoutIfNeeded];
    size = [self.CAFourthTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.CAFourthTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.CAFourthTitleLbl layoutIfNeeded];
    size = [self.CAFifthTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.CAFifthTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.CAFifthTitleLbl layoutIfNeeded];
    size = [self.CATotalScoreTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.CATotalScoreTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.CATotalScoreTitleLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)CAFirstTitleLbl{
    if (!_CAFirstTitleLbl) {
        _CAFirstTitleLbl = [[UILabel alloc] init];
        [_CAFirstTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _CAFirstTitleLbl.textColor = [UIColor blackColor];
        _CAFirstTitleLbl.backgroundColor = [UIColor systemGreenColor];
        _CAFirstTitleLbl.numberOfLines = 0;
        _CAFirstTitleLbl.text = NSLocalizedString(@"第一局", nil);
        [_CAFirstTitleLbl sizeToFit];
    }
    return _CAFirstTitleLbl;
}
- (UILabel *)CAFirstContentLbl{
    if (!_CAFirstContentLbl) {
        _CAFirstContentLbl = [[UILabel alloc] init];
        [_CAFirstContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _CAFirstContentLbl.textColor = [UIColor blackColor];
        _CAFirstContentLbl.backgroundColor = [UIColor systemGreenColor];
        _CAFirstContentLbl.numberOfLines = 0;
        _CAFirstContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_CAFirstContentLbl sizeToFit];
    }
    return _CAFirstContentLbl;
}
- (UILabel *)CASecondTitleLbl{
    if (!_CASecondTitleLbl) {
        _CASecondTitleLbl = [[UILabel alloc] init];
        [_CASecondTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _CASecondTitleLbl.textColor = [UIColor blackColor];
        _CASecondTitleLbl.backgroundColor = [UIColor systemGreenColor];
        _CASecondTitleLbl.numberOfLines = 0;
        _CASecondTitleLbl.text = NSLocalizedString(@"第二局", nil);
        [_CASecondTitleLbl sizeToFit];
    }
    return _CASecondTitleLbl;
}
- (UILabel *)CASecondContentLbl{
    if (!_CASecondContentLbl) {
        _CASecondContentLbl = [[UILabel alloc] init];
        [_CASecondContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _CASecondContentLbl.textColor = [UIColor blackColor];
        _CASecondContentLbl.backgroundColor = [UIColor systemGreenColor];
        _CASecondContentLbl.numberOfLines = 0;
        _CASecondContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_CASecondContentLbl sizeToFit];
    }
    return _CASecondContentLbl;
}
- (UILabel *)CAThirdTitleLbl{
    if (!_CAThirdTitleLbl) {
        _CAThirdTitleLbl = [[UILabel alloc] init];
        [_CAThirdTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _CAThirdTitleLbl.textColor = [UIColor blackColor];
        _CAThirdTitleLbl.backgroundColor = [UIColor systemGreenColor];
        _CAThirdTitleLbl.numberOfLines = 0;
        _CAThirdTitleLbl.text = NSLocalizedString(@"第三局", nil);
        [_CAThirdTitleLbl sizeToFit];
    }
    return _CAThirdTitleLbl;
}
- (UILabel *)CAThirdContentLbl{
    if (!_CAThirdContentLbl) {
        _CAThirdContentLbl = [[UILabel alloc] init];
        [_CAThirdContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _CAThirdContentLbl.textColor = [UIColor blackColor];
        _CAThirdContentLbl.backgroundColor = [UIColor systemGreenColor];
        _CAThirdContentLbl.numberOfLines = 0;
        _CAThirdContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_CAThirdContentLbl sizeToFit];
    }
    return _CAThirdContentLbl;
}
- (UILabel *)CAFourthTitleLbl{
    if (!_CAFourthTitleLbl) {
        _CAFourthTitleLbl = [[UILabel alloc] init];
        [_CAFourthTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _CAFourthTitleLbl.textColor = [UIColor blackColor];
        _CAFourthTitleLbl.backgroundColor = [UIColor systemGreenColor];
        _CAFourthTitleLbl.numberOfLines = 0;
        _CAFourthTitleLbl.text = NSLocalizedString(@"第四局", nil);
        [_CAFourthTitleLbl sizeToFit];
    }
    return _CAFourthTitleLbl;
}
- (UILabel *)CAFourthContentLbl{
    if (!_CAFourthContentLbl) {
        _CAFourthContentLbl = [[UILabel alloc] init];
        [_CAFourthContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _CAFourthContentLbl.textColor = [UIColor blackColor];
        _CAFourthContentLbl.backgroundColor = [UIColor systemGreenColor];
        _CAFourthContentLbl.numberOfLines = 0;
        _CAFourthContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_CAFourthContentLbl sizeToFit];
    }
    return _CAFourthContentLbl;
}
- (UILabel *)CAFifthTitleLbl{
    if (!_CAFifthTitleLbl) {
        _CAFifthTitleLbl = [[UILabel alloc] init];
        [_CAFifthTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _CAFifthTitleLbl.textColor = [UIColor blackColor];
        _CAFifthTitleLbl.backgroundColor = [UIColor systemGreenColor];
        _CAFifthTitleLbl.numberOfLines = 0;
        _CAFifthTitleLbl.text = NSLocalizedString(@"第五局", nil);
        [_CAFifthTitleLbl sizeToFit];
    }
    return _CAFifthTitleLbl;
}
- (UILabel *)CAFifthContentLbl{
    if (!_CAFifthContentLbl) {
        _CAFifthContentLbl = [[UILabel alloc] init];
        [_CAFifthContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _CAFifthContentLbl.textColor = [UIColor blackColor];
        _CAFifthContentLbl.backgroundColor = [UIColor systemGreenColor];
        _CAFifthContentLbl.numberOfLines = 0;
        _CAFifthContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_CAFifthContentLbl sizeToFit];
    }
    return _CAFifthContentLbl;
}
- (UILabel *)CATotalScoreTitleLbl{
    if (!_CATotalScoreTitleLbl) {
        _CATotalScoreTitleLbl = [[UILabel alloc] init];
        [_CATotalScoreTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _CATotalScoreTitleLbl.textColor = [UIColor blackColor];
        _CATotalScoreTitleLbl.backgroundColor = [UIColor systemGreenColor];
        _CATotalScoreTitleLbl.numberOfLines = 0;
        _CATotalScoreTitleLbl.text = NSLocalizedString(@"总比分", nil);
        [_CATotalScoreTitleLbl sizeToFit];
    }
    return _CATotalScoreTitleLbl;
}
- (UILabel *)CATotalScoreContentLbl{
    if (!_CATotalScoreContentLbl) {
        _CATotalScoreContentLbl = [[UILabel alloc] init];
        [_CATotalScoreContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _CATotalScoreContentLbl.textColor = [UIColor blackColor];
        _CATotalScoreContentLbl.backgroundColor = [UIColor systemGreenColor];
        _CATotalScoreContentLbl.numberOfLines = 0;
        _CATotalScoreContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_CATotalScoreContentLbl sizeToFit];
    }
    return _CATotalScoreContentLbl;
}
@end
