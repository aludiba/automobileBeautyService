//
//  PVYWKScoreSummaryTableViewCell.m
//  PocketVolleyballScore
//
//  Created by bykj on 2019/11/5.
//  Copyright © 2019 com. All rights reserved.
//

#import "PVYWKScoreSummaryTableViewCell.h"
#import "PVYWKScorecardViewModel.h"

@interface PVYWKScoreSummaryTableViewCell()
@property(nonatomic, strong)UILabel *PVYWKFirstTitleLbl;//第一局标题
@property(nonatomic, strong)UILabel *PVYWKFirstContentLbl;//第一局内容
@property(nonatomic, strong)UILabel *PVYWKSecondTitleLbl;//第二局标题
@property(nonatomic, strong)UILabel *PVYWKSecondContentLbl;//第二局内容
@property(nonatomic, strong)UILabel *PVYWKThirdTitleLbl;//第三局标题
@property(nonatomic, strong)UILabel *PVYWKThirdContentLbl;//第三局内容
@property(nonatomic, strong)UILabel *PVYWKFourthTitleLbl;//第四局标题
@property(nonatomic, strong)UILabel *PVYWKFourthContentLbl;//第四局内容
@property(nonatomic, strong)UILabel *PVYWKFifthTitleLbl;//第五局标题
@property(nonatomic, strong)UILabel *PVYWKFifthContentLbl;//第五局内容
@property(nonatomic, strong)UILabel *PVYWKTotalScoreTitleLbl;//总比分标题
@property(nonatomic, strong)UILabel *PVYWKTotalScoreContentLbl;//总比分内容
@end

@implementation PVYWKScoreSummaryTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.PVYWKFirstTitleLbl];
        [self.contentView addSubview:self.PVYWKFirstContentLbl];
        [self.contentView addSubview:self.PVYWKSecondTitleLbl];
        [self.contentView addSubview:self.PVYWKSecondContentLbl];
        [self.contentView addSubview:self.PVYWKThirdTitleLbl];
        [self.contentView addSubview:self.PVYWKThirdContentLbl];
        [self.contentView addSubview:self.PVYWKFourthTitleLbl];
        [self.contentView addSubview:self.PVYWKFourthContentLbl];
        [self.contentView addSubview:self.PVYWKFifthTitleLbl];
        [self.contentView addSubview:self.PVYWKFifthContentLbl];
        [self.contentView addSubview:self.PVYWKTotalScoreTitleLbl];
        [self.contentView addSubview:self.PVYWKTotalScoreContentLbl];
        
        [self.PVYWKFirstTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.contentView).offset(10);
            make.width.mas_equalTo(PVYWKWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.PVYWKFirstContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVYWKFirstTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
           make.top.equalTo(self.contentView).offset(10);
                make.height.mas_equalTo(20);
        }];
        [self.PVYWKSecondTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.PVYWKFirstTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(PVYWKWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.PVYWKSecondContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVYWKSecondTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.PVYWKFirstContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.PVYWKThirdTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.PVYWKSecondTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(PVYWKWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.PVYWKThirdContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVYWKThirdTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.PVYWKSecondContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.PVYWKFourthTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.PVYWKThirdTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(PVYWKWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.PVYWKFourthContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVYWKFourthTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.PVYWKThirdContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.PVYWKFifthTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.PVYWKFourthTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(PVYWKWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.PVYWKFifthContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVYWKFifthTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.PVYWKFourthContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.PVYWKTotalScoreTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.PVYWKFifthTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(PVYWKWIDTH);
            make.height.mas_equalTo(20);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
        [self.PVYWKTotalScoreContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVYWKTotalScoreTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.PVYWKFifthContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
    }
    return self;
}
- (void)setPVYWKModel:(PVYWKScorecardViewModel *)PVYWKModel{
    _PVYWKModel = PVYWKModel;
    for (int i = 0; i < _PVYWKModel.PVYWKBureauPointsArray.count; i++) {
        PVYWKBureauPointsModel *bureauPointsModel = _PVYWKModel.PVYWKBureauPointsArray[i];
        if (bureauPointsModel.PVYWKIndex == 0) {
            if (bureauPointsModel.PVYWKtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.PVYWKFirstContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.PVYWKtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.PVYWKIndex == 1){
            if (bureauPointsModel.PVYWKtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.PVYWKSecondContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.PVYWKtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.PVYWKIndex == 2){
            if (bureauPointsModel.PVYWKtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.PVYWKThirdContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.PVYWKtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.PVYWKIndex == 3){
            if (bureauPointsModel.PVYWKtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.PVYWKFourthContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.PVYWKtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.PVYWKIndex == 4){
            if (bureauPointsModel.PVYWKtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.PVYWKFifthContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.PVYWKtBureauScoreString,deadEvenString];
            }
        }
    }
    if (_PVYWKModel.totalAcoreString.length) {
        self.PVYWKTotalScoreContentLbl.text = _PVYWKModel.totalAcoreString;
    }
    CGSize size = [self.PVYWKFirstTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.PVYWKFirstTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVYWKFirstTitleLbl layoutIfNeeded];
    size = [self.PVYWKSecondTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.PVYWKSecondTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVYWKSecondTitleLbl layoutIfNeeded];
    size = [self.PVYWKThirdTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.PVYWKThirdTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVYWKThirdTitleLbl layoutIfNeeded];
    size = [self.PVYWKFourthTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.PVYWKFourthTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVYWKFourthTitleLbl layoutIfNeeded];
    size = [self.PVYWKFifthTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.PVYWKFifthTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVYWKFifthTitleLbl layoutIfNeeded];
    size = [self.PVYWKTotalScoreTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.PVYWKTotalScoreTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVYWKTotalScoreTitleLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)PVYWKFirstTitleLbl{
    if (!_PVYWKFirstTitleLbl) {
        _PVYWKFirstTitleLbl = [[UILabel alloc] init];
        [_PVYWKFirstTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _PVYWKFirstTitleLbl.textColor = [UIColor blackColor];
        _PVYWKFirstTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVYWKFirstTitleLbl.numberOfLines = 0;
        _PVYWKFirstTitleLbl.text = NSLocalizedString(@"第一局", nil);
        [_PVYWKFirstTitleLbl sizeToFit];
    }
    return _PVYWKFirstTitleLbl;
}
- (UILabel *)PVYWKFirstContentLbl{
    if (!_PVYWKFirstContentLbl) {
        _PVYWKFirstContentLbl = [[UILabel alloc] init];
        [_PVYWKFirstContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _PVYWKFirstContentLbl.textColor = [UIColor blackColor];
        _PVYWKFirstContentLbl.backgroundColor = [UIColor cyanColor];
        _PVYWKFirstContentLbl.numberOfLines = 0;
        _PVYWKFirstContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_PVYWKFirstContentLbl sizeToFit];
    }
    return _PVYWKFirstContentLbl;
}
- (UILabel *)PVYWKSecondTitleLbl{
    if (!_PVYWKSecondTitleLbl) {
        _PVYWKSecondTitleLbl = [[UILabel alloc] init];
        [_PVYWKSecondTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _PVYWKSecondTitleLbl.textColor = [UIColor blackColor];
        _PVYWKSecondTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVYWKSecondTitleLbl.numberOfLines = 0;
        _PVYWKSecondTitleLbl.text = NSLocalizedString(@"第二局", nil);
        [_PVYWKSecondTitleLbl sizeToFit];
    }
    return _PVYWKSecondTitleLbl;
}
- (UILabel *)PVYWKSecondContentLbl{
    if (!_PVYWKSecondContentLbl) {
        _PVYWKSecondContentLbl = [[UILabel alloc] init];
        [_PVYWKSecondContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _PVYWKSecondContentLbl.textColor = [UIColor blackColor];
        _PVYWKSecondContentLbl.backgroundColor = [UIColor cyanColor];
        _PVYWKSecondContentLbl.numberOfLines = 0;
        _PVYWKSecondContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_PVYWKSecondContentLbl sizeToFit];
    }
    return _PVYWKSecondContentLbl;
}
- (UILabel *)PVYWKThirdTitleLbl{
    if (!_PVYWKThirdTitleLbl) {
        _PVYWKThirdTitleLbl = [[UILabel alloc] init];
        [_PVYWKThirdTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _PVYWKThirdTitleLbl.textColor = [UIColor blackColor];
        _PVYWKThirdTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVYWKThirdTitleLbl.numberOfLines = 0;
        _PVYWKThirdTitleLbl.text = NSLocalizedString(@"第三局", nil);
        [_PVYWKThirdTitleLbl sizeToFit];
    }
    return _PVYWKThirdTitleLbl;
}
- (UILabel *)PVYWKThirdContentLbl{
    if (!_PVYWKThirdContentLbl) {
        _PVYWKThirdContentLbl = [[UILabel alloc] init];
        [_PVYWKThirdContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _PVYWKThirdContentLbl.textColor = [UIColor blackColor];
        _PVYWKThirdContentLbl.backgroundColor = [UIColor cyanColor];
        _PVYWKThirdContentLbl.numberOfLines = 0;
        _PVYWKThirdContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_PVYWKThirdContentLbl sizeToFit];
    }
    return _PVYWKThirdContentLbl;
}
- (UILabel *)PVYWKFourthTitleLbl{
    if (!_PVYWKFourthTitleLbl) {
        _PVYWKFourthTitleLbl = [[UILabel alloc] init];
        [_PVYWKFourthTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _PVYWKFourthTitleLbl.textColor = [UIColor blackColor];
        _PVYWKFourthTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVYWKFourthTitleLbl.numberOfLines = 0;
        _PVYWKFourthTitleLbl.text = NSLocalizedString(@"第四局", nil);
        [_PVYWKFourthTitleLbl sizeToFit];
    }
    return _PVYWKFourthTitleLbl;
}
- (UILabel *)PVYWKFourthContentLbl{
    if (!_PVYWKFourthContentLbl) {
        _PVYWKFourthContentLbl = [[UILabel alloc] init];
        [_PVYWKFourthContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _PVYWKFourthContentLbl.textColor = [UIColor blackColor];
        _PVYWKFourthContentLbl.backgroundColor = [UIColor cyanColor];
        _PVYWKFourthContentLbl.numberOfLines = 0;
        _PVYWKFourthContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_PVYWKFourthContentLbl sizeToFit];
    }
    return _PVYWKFourthContentLbl;
}
- (UILabel *)PVYWKFifthTitleLbl{
    if (!_PVYWKFifthTitleLbl) {
        _PVYWKFifthTitleLbl = [[UILabel alloc] init];
        [_PVYWKFifthTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _PVYWKFifthTitleLbl.textColor = [UIColor blackColor];
        _PVYWKFifthTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVYWKFifthTitleLbl.numberOfLines = 0;
        _PVYWKFifthTitleLbl.text = NSLocalizedString(@"第五局", nil);
        [_PVYWKFifthTitleLbl sizeToFit];
    }
    return _PVYWKFifthTitleLbl;
}
- (UILabel *)PVYWKFifthContentLbl{
    if (!_PVYWKFifthContentLbl) {
        _PVYWKFifthContentLbl = [[UILabel alloc] init];
        [_PVYWKFifthContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _PVYWKFifthContentLbl.textColor = [UIColor blackColor];
        _PVYWKFifthContentLbl.backgroundColor = [UIColor cyanColor];
        _PVYWKFifthContentLbl.numberOfLines = 0;
        _PVYWKFifthContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_PVYWKFifthContentLbl sizeToFit];
    }
    return _PVYWKFifthContentLbl;
}
- (UILabel *)PVYWKTotalScoreTitleLbl{
    if (!_PVYWKTotalScoreTitleLbl) {
        _PVYWKTotalScoreTitleLbl = [[UILabel alloc] init];
        [_PVYWKTotalScoreTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _PVYWKTotalScoreTitleLbl.textColor = [UIColor blackColor];
        _PVYWKTotalScoreTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVYWKTotalScoreTitleLbl.numberOfLines = 0;
        _PVYWKTotalScoreTitleLbl.text = NSLocalizedString(@"总比分", nil);
        [_PVYWKTotalScoreTitleLbl sizeToFit];
    }
    return _PVYWKTotalScoreTitleLbl;
}
- (UILabel *)PVYWKTotalScoreContentLbl{
    if (!_PVYWKTotalScoreContentLbl) {
        _PVYWKTotalScoreContentLbl = [[UILabel alloc] init];
        [_PVYWKTotalScoreContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _PVYWKTotalScoreContentLbl.textColor = [UIColor blackColor];
        _PVYWKTotalScoreContentLbl.backgroundColor = [UIColor cyanColor];
        _PVYWKTotalScoreContentLbl.numberOfLines = 0;
        _PVYWKTotalScoreContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_PVYWKTotalScoreContentLbl sizeToFit];
    }
    return _PVYWKTotalScoreContentLbl;
}
@end
