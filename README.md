TQStarRatingView
================

IOS 星星评分视图控件，点击和滑动评分。

    ================================================
    初始化控件
    TQStarRatingView *starRatingView = [[TQStarRatingView alloc] initWithFrame:CGRectMake(0, 300, 250, 50) numberOfStar:5];
    starRatingView.delegate = self;
    [self.view addSubview:starRatingView];
    ================================================
    委托回调处理分数变更
    -(void)starRatingView:(TQStarRatingView *)view score:(float)score
    {
      self.scoreLabel.text = [NSString stringWithFormat:@"%0.2f",score * 10 ];
    }
    ================================================
    用代码设置分数 参数需要在0-1之间。
    [self.starRatingView setScore:0.5f withAnimation:YES];
    
![Image text](http://github.com/TinyQ/TQStarRatingView/raw/master/READMEIMAGE/TQStarRatingView.gif)
