//
// Created by Dani Postigo on 1/8/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DPTextField;


typedef void (^DPTextFieldBlock)(DPTextField *);
typedef BOOL (^DPTextFieldReturnValueBlock)(DPTextField *);


@interface DPTextField : UITextField <UITextFieldDelegate> {

    id textFieldDelegate;

    __unsafe_unretained UITextField *previousTextField;


    DPTextFieldReturnValueBlock returnValidationBlock;
    DPTextFieldReturnValueBlock beginValidationBlock;
    DPTextFieldBlock completionBlock;

}

@property(nonatomic, strong) id textFieldDelegate;
@property(nonatomic, assign) UITextField *previousTextField;
@end