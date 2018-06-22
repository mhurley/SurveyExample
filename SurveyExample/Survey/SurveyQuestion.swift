//
//  SurveyQuestion.swift
//  SurveyExample
//
//  Created by Matt Hurley on 11/18/17.
//  Copyright © 2017 Matt Hurley. All rights reserved.
//

import Foundation

struct SurveyQuestion {
  var question: String
  var selected: Int?
  var answers: [String]

  init(question: String, answers: [String]) {
    self.question = question
    self.selected = nil
    self.answers = answers
  }
}


