//
//  FISSentence.m
//  objc-fissentence
//
//  Created by Elli Scharlin on 6/9/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISSentence.h"

@interface FISSentence ()
@property (strong, nonatomic, readwrite) NSString *sentence;
@end

@implementation FISSentence

-(void)addWord:(NSString *)word{
    if ([self validWord:word]) {
        
        [self.words addObject:word];
    }
    else{
        [self.words addObject:nil];
    }
    
    [self assembleSentence];
}


-(void)addWords:(NSArray *)words
withPunctuation:(NSString *)punctuation{
    
}

-(void)removeWordAtIndex:(NSUInteger)index{
    [self.words removeObjectAtIndex:index];
    
}

-(void)insertWord:(NSString *)word
          atIndex:(NSUInteger)index{
    
}

-(void)replacePunctuationWithPunctuation:(NSString *)punctuation{
    
}

-(void)replaceWordAtIndex:(NSUInteger)index
                 withWord:(NSString *)word{
    
}
-(void)assembleSentence{
    self.sentence = [self.words componentsJoinedByString:@" "];
}

-(BOOL)validWord:(NSString *)word{
    
    if ([word isEqualToString:@""]||[word isEqualToString:@" "]) {
        if ([word isEqual:nil]) {
            return NO;
        }
    }
    return YES;
}

-(BOOL)validPunctuation:(NSString *)punctuation{
    
    return NO;
}

-(BOOL)validIndex:(NSUInteger)index{
    if (index > self.sentence.length) {
        return NO;
    }
    return YES;
}
@end
