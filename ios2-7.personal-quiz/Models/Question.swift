//
//  Question.swift
//  ios2-7.personal-quiz
//
//  Created by user on 03/07/2024.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
   static func getQuestions() -> [Question]{
        [
            Question(
                title: "What food do you prefer ?",
                type: .single,
                answers: [
                    Answer(title: "Steak", animal: .dog),
                    Answer(title: "Fish", animal: .cat),
                    Answer(title: "Carrot", animal: .rabbit),
                    Answer(title: "Corn", animal: .turtle),
                ]
            ),
            Question(
                title: "What do you like more ?",
                type: .multiple,
                answers: [
                    Answer(title: "To sweam", animal: .turtle),
                    Answer(title: "To sleep", animal: .cat),
                    Answer(title: "To hug", animal: .rabbit),
                    Answer(title: "To eat", animal: .dog),
                ]
            ),
            Question(
                title: "Do you like journey ?",
                type: .ranged,
                answers: [
                    Answer(title: "Hate", animal: .cat),
                    Answer(title: "Nervouse", animal: .rabbit),
                    Answer(title: "Don't noticed", animal: .turtle),
                    Answer(title: "Fall in love", animal: .dog),
                ]
            )
        ]
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let animal: Animal
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .cat:
             "You are listen just yourself. You like to walk alone. You like to be loneliness."
        case .dog:
            "You like to be with your friends. You around yourself with people which you likes and they always ready to help you."
        case .rabbit:
            "You like all soft things. You are healthy and full of energy."
        case .turtle:
            "Your strenge is your wisdom. You will win on long distance."
        }
    }
}
