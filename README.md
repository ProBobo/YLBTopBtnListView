# YLBTopBtnListView
通用按钮选项卡
<br>
<br>安装：pod 'YLBTopBtnListView'
<br>或者：pod 'YLBTopBtnListView', :git =>'https://github.com/ylb3303/YLBTopBtnListView.git'
<br>
用法：
<pre><code>
NSMutableArray *titleArray = [@[@"选项按钮标题1",
                                    <br>@"选项按钮标题2",
                                    <br>@"选项按钮标题3",
                                    <br>@"选项按钮标题4"
                                    <br>] mutableCopy];
CGFloat fontHeight = 16;
UIColor *colorNormal = [UIColor grayColor];
UIColor *colorSelected = [UIColor purpleColor];

TopGiftListBtnView *_topGiftListBtnView = [[TopGiftListBtnView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.frame), 44) titleArray:titleArray fontHeight:fontHeight colorNormal:colorNormal colorSelected:colorSelected titleBtn_Block:^(int tag) {
        //[weakSelf titleBtn_Block_Method:tag];
    }];
</code></pre>
