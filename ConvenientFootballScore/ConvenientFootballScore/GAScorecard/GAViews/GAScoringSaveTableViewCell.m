//
//  GAScoringSaveTableViewCell.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "GAScoringSaveTableViewCell.h"
#import "GAScorecardViewModel.h"

@interface GAScoringSaveTableViewCell()
@property(nonatomic, strong)UIButton *GASaveButton;//保存按钮
@end
@implementation GAScoringSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self GASetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)GASetContentView{
    self.contentView.backgroundColor = [UIColor greenColor];
    [self.contentView addSubview:self.GASaveButton];
    [self.GASaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(90);
        make.top.equalTo(self.contentView).offset(30);
        make.trailing.equalTo(self.contentView).offset(-90);
        make.height.mas_equalTo(44);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
}
- (void)GASave:(UIButton *)sender{
    if (self.GAScorecardSaveB) {
        self.GAScorecardSaveB(self);
    }
}
- (void)setGAModel:(GAScorecardViewModel *)GAModel{
    _GAModel = GAModel;
    
}
#pragma mark - 属性懒加载
- (UIButton *)GASaveButton{
    if (!_GASaveButton) {
        _GASaveButton = [[UIButton alloc] init];
        [_GASaveButton setTitle:NSLocalizedString(@"保存比赛结果", nil) forState:UIControlStateNormal];
        [_GASaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _GASaveButton.backgroundColor = [UIColor blackColor];
        _GASaveButton.titleLabel.font = [UIFont boldSystemFontOfSize:25];
        _GASaveButton.layer.cornerRadius = 4.0f;
        _GASaveButton.layer.masksToBounds = YES;
        _GASaveButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_GASaveButton addTarget:self action:@selector(GASave:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GASaveButton;
}
@end
