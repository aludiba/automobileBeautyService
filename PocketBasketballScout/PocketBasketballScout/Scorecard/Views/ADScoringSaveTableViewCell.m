//
//  ADScoringSaveTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ADScoringSaveTableViewCell.h"
#import "ADScorecardViewModel.h"

@interface ADScoringSaveTableViewCell()
@property(nonatomic, strong)UIButton *ADSaveButton;//保存按钮
@end
@implementation ADScoringSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self ADSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)ADSetContentView{
    [self.contentView addSubview:self.ADSaveButton];
    
    [self.ADSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(100);
        make.top.equalTo(self.contentView).offset(20);
        make.trailing.equalTo(self.contentView).offset(-100);
        make.height.mas_equalTo(44);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
}
- (void)ADSave:(UIButton *)sender{
    if (self.ADScorecardSaveB) {
        self.ADScorecardSaveB(self);
    }
}
- (void)setADModel:(ADScorecardViewModel *)ADModel{
    _ADModel = ADModel;
    
}
#pragma mark - 属性懒加载
- (UIButton *)ADSaveButton{
    if (!_ADSaveButton) {
        _ADSaveButton = [[UIButton alloc] init];
        [_ADSaveButton setTitle:@"Save results" forState:UIControlStateNormal];
        [_ADSaveButton setTitleColor:[UIColor cyanColor] forState:UIControlStateNormal];
        _ADSaveButton.backgroundColor = [UIColor systemPurpleColor];
        _ADSaveButton.titleLabel.font = [UIFont boldSystemFontOfSize:20];
        _ADSaveButton.layer.cornerRadius = 8.0f;
        _ADSaveButton.layer.masksToBounds = YES;
        _ADSaveButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _ADSaveButton.layer.borderWidth = 2.0f;
        _ADSaveButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ADSaveButton addTarget:self action:@selector(ADSave:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ADSaveButton;
}
@end
