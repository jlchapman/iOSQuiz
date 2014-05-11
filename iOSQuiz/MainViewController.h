//
//  MainViewController.h
//  iOSQuiz
//
//  Created by Jerry Chapman on 5/11/14.
//  Copyright (c) 2014 Jerry Chapman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

@property (nonatomic) int currentQuestionIndex;
@property (nonatomic,copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
