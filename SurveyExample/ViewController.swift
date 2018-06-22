//
//  ViewController.swift
//  SurveyExample
//
//  Created by Matt Hurley on 11/18/17.
//  Copyright © 2017 Matt Hurley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!

  var survey: Survey = Survey.exampleSurvey

  override func viewDidLoad() {
    super.viewDidLoad()

    tableView.dataSource = self
    tableView.delegate = self
  }
}

extension ViewController: UITableViewDataSource {

  func numberOfSections(in tableView: UITableView) -> Int {
    return survey.questions.count
  }

  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    let question = survey.questions[section]
    return question.question
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    let question = survey.questions[section]
    return question.answers.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "AnswerCell", for: indexPath)

    let question = survey.questions[indexPath.section]
    let answer = question.answers[indexPath.row]

    cell.textLabel?.text = answer
    if question.selected == indexPath.row {
      cell.accessoryType = .checkmark
    } else {
      cell.accessoryType = .none
    }

    return cell
  }
}

extension ViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    // Check if already selected
    if survey.questions[indexPath.section].selected == indexPath.row {
      survey.questions[indexPath.section].selected = nil
    } else {
      survey.questions[indexPath.section].selected = indexPath.row
    }

    tableView.reloadSections([indexPath.section], with: .fade)

    //tableView.deselectRow(at: indexPath, animated: true)
  }
}






