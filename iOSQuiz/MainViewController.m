//
//  MainViewController.m
//  iOSQuiz
//
//  Created by Jerry Chapman on 5/11/14.
//  Copyright (c) 2014 Jerry Chapman. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //create two arrays filled with questions and answers
        //and make the pointers point to them
        
        self.questions = @[@"What does Dave do best at work?",
                           @"What is Dave's favorite thing to do?",
                           @"What city did Dave run his car out of Natural Gas?"];
        
        self.answers = @[@"Read Emails",
                         @"Eat Food",
                         @"San Diego"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showQuestion:(id)sender
{
    //Step to the next question
    self.currentQuestionIndex++;
    
    //Am I past the last question?
    if (self.currentQuestionIndex == [self.questions count]) {
        //Go back to the first question
        self.currentQuestionIndex = 0;
    }
    
    //Get the string at that index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //Display the string in the question label
    self.questionLabel.text = question;
    
    //Reset the answer label
    self.answerLabel.text = @"????";
}

- (IBAction)showAnswer:(id)sender
{
    //What is the answer to the current question?
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    //display it in the answer label
    self.answerLabel.text = answer;
}

@end
