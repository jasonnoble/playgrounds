/*:
# Warm up - Modeling objects - Golf App

## 1) Create models for the following objects to model an application that tracks your score in a golf game.

### Classes:
 * **Player**
 * **Round**
 * **HoleScore**

#### Player
 * Properties
   * `name:String`
   * `activeRound:Round`
 * Methods
   * Creating a Player should create a new Round

#### Round
 * Properties
   * `scores:[Int:HoleScore]` (Keys are hole #s, Values are HoleScore Objects)
 * Methods
   * `recordStrokes(strokes:Int, forHole hole:Int)` - creates HoleScore Object and places in dictionary at appropriate spot
   * `isComplete() -> Bool` - returns true if all 18 holes have scored
   * `totalScore() -> Int` - returns the score for the round
 
#### HoleScore
  * Properties
    * `strokeCount:Int`
 
## 2) Uncomment code and run

 At the bottom of this file, there is commented out code that should work if your classes are built correctly.
 
*/

class Player {
  var name:String
  var activeRound = Round()

  init(name: String) {
    self.name = name
  }
}

class Round {
  var scores = [Int:HoleScore]()

  func recordStrokes(strokes:Int, forHole hole:Int) -> Void {
    scores[hole] = HoleScore(strokes: strokes)
  }

  func isComplete() -> Bool {
    return scores.count == 18
  }

  func totalScore() -> Int {
    var sum = 0
    for score in scores.values {
      sum += score.strokeCount
    }
    return sum
  }
}

class HoleScore {
  var strokeCount:Int

  init(strokes:Int) {
    self.strokeCount = strokes
  }

}

let me = Player(name: "Brooks")
me.activeRound.isComplete()
me.activeRound.totalScore()
me.activeRound.recordStrokes(4, forHole: 1)
me.activeRound.totalScore()

for holeNumber in 2...18 {
    me.activeRound.recordStrokes(5, forHole: holeNumber)
}

me.activeRound.totalScore()
me.activeRound.isComplete()
