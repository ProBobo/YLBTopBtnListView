//
//  ViewController.m
//  YLBTopBtnListViewDemo
//
//  Created by 余礼钵 on 2017/12/20.
//  Copyright © 2017年 余礼钵. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic , strong)UILabel *showTagL;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGFloat Y = [UIApplication sharedApplication].statusBarFrame.size.height;

    NSMutableArray *titleArray = [@[@"选项1",
                                    @"选项2",
                                    @"选项3",
                                    @"选项4"
                                    ] mutableCopy];
    CGFloat fontHeight = 16;
    UIColor *colorNormal = [UIColor grayColor];
    UIColor *colorSelected = [UIColor purpleColor];
    __weak typeof(self)weakSelf = self;
    TopGiftListBtnView *topGiftListBtnView = [[TopGiftListBtnView alloc] initWithFrame:CGRectMake(0, Y, CGRectGetWidth(self.view.frame), 44) titleArray:titleArray fontHeight:fontHeight colorNormal:colorNormal colorSelected:colorSelected titleBtn_Block:^(int tag) {
        [weakSelf titleBtn_Block_Method:tag];
    }];
    [self.view addSubview:topGiftListBtnView];
    
    _showTagL = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 25)];
    _showTagL.center = self.view.center;
    _showTagL.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_showTagL];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)titleBtn_Block_Method:(int)tag
{
    _showTagL.text = [NSString stringWithFormat:@"%d",tag];
}

@end
