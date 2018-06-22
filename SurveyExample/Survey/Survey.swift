//
//  Survey.swift
//  SurveyExample
//
//  Created by Matt Hurley on 11/18/17.
//  Copyright © 2017 Matt Hurley. All rights reserved.
//

import Foundation

struct Survey {

  var questions: [SurveyQuestion]
}

extension Survey {
  static let exampleSurvey = Survey(questions: [
      SurveyQuestion(question: "question 1", answers: ["answer 1",
                                                       "answer 2"]),
      SurveyQuestion(question: "question 2", answers: ["answer 2.1",
                                                       "answer 2.2",
                                                       "answer 2.3"]),
      SurveyQuestion(question: "question 3", answers: ["answer 3.1",
                                                       "answer 3.2",
                                                       "answer 3.3",
                                                       "answer 3.4"]),
      ]
  )
}



