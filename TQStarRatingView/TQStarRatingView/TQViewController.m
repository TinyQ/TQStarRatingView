//
//  TQViewController.m
//  TQStarRatingView
//
//  Created by fuqiang on 13-8-28.
//  Copyright (c) 2013年 TinyQ. All rights reserved.
//

#import "TQViewController.h"

@interface TQViewController ()

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation TQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _starRatingView = [[TQStarRatingView alloc] initWithFrame:CGRectMake(30, 200, 250, 50)
                                                 numberOfStar:kNUMBER_OF_STAR];
    _starRatingView.delegate = self;
    [self.view addSubview:_starRatingView];
    
}

-(void)starRatingView:(TQStarRatingView *)view score:(float)score
{
    self.scoreLabel.text = [NSString stringWithFormat:@"%0.2f",score * 10 ];
    
    [self.nibStarRatingView setScore:score withAnimation:YES];
}

- (IBAction)scoreButtonTouchUpInside:(id)sender
{
    //设置分数。参数需要在0-1之间。
    [self.starRatingView setScore:0.5f withAnimation:YES];
    
    [self.nibStarRatingView setScore:0.5f withAnimation:YES];
    
    //or
    /*
     
     [self.starRatingView setScore:0.5f withAnimation:YES completion:^(BOOL finished)
     {
     NSLog(@"%@",@"starOver");
     }];
     
     */
}

@end
