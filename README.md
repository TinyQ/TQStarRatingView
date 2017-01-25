TQStarRatingView
================

## 星星评分控件

IOS 星星评分视图控件，点击和滑动评分。

#### 控件效果

![Image text](READMEIMAGE/TQStarRatingView.gif)

#### 初始化

```objective-c
TQStarRatingView *starRatingView = [[TQStarRatingView alloc] initWithFrame:CGRectMake(30, 200, 250, 50)
                                                                  numberOfStar:5];
starRatingView.delegate = self;
[self.view addSubview:starRatingView];
```
    
#### 委托回调处理分数变更

```objective-c

-(void)starRatingView:(TQStarRatingView *)view score:(float)score{
    self.scoreLabel.text = [NSString stringWithFormat:@"%0.2f",score * 10 ];
}

```
    
#### 用代码设置分数 参数需要在0-1之间。

```objective-c

[self.starRatingView setScore:0.5f withAnimation:YES];

``` 
    
```objective-c    

[self.starRatingView setScore:0.5f withAnimation:YES completion:^(BOOL finished){
    NSLog(@"%@",@"starOver");
}];

```  
  
####  About TinyQ

 email : <tinyqf@gmail.com>
 
 blogs : <http://tinyq.me>
 
 
