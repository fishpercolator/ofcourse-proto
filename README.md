# Of course! (Non-functional prototype)

This is a prototype for "Of course!", an innovation from the 2017 Leeds City Council innovation lab on adult education.

The demo can be accessed at https://ofcourse-proto.herokuapp.com/

## Concept

Of course! is a fun and colourful way to explore what kinds of courses might be suitable for you. The idea is to make something that's entertaining enough that people will want to share it with their friends on social media.

You can progress through the web app through a number of different routes, each step gradually eliminating courses from the available pool until the user is presented with one or more relevant courses and information about how to sign up.

The two main routes are decided at a screen that asks the user if they know what they're looking for. If yes, it allows them to drill down quickly through the actual course options. If no, then it asks them silly and tangentially related questions to get a feel for what the user might like to study.

It can be integrated with Calendly so the user can then book a callback from the learning centre without leaving their seat.

## Demo

The demo isn't based on real data, and all routes through it are fixed. Everything in there is an example and could be changed in the real version of the webapp.

There are several "end" scenarios in the demo app:

1. If the user is under 19, they're told they can get financial support for college education.
2. If the user picks that they want to learn the Catalan language they're given some info about a course.
3. If the user goes through the quiz and says they think being Prime Minister is cool but they'd run away from a celebrity, it suggests a confidence-building course. If they also say they like to travel by bike it suggests bike maintenance first.
4. Several routes lead to the "Oh no" screen, where a user could enter something they think is missing.

## Future

A real version of Of course! would - obviously - be based on the real adult education data and a ranking algorithm based on the users' answers and tags that have been applied to each course or course subject.

It would also include location information, possibly taking into account things like bus times.

The "here's your course" screen could show several courses at once, including "recommendations" (that is, things that were eliminated but still have value), rather than its demo "one course at a time" approach.

## Name & code

Please feel free to use the name or any code from this even if you pick a different solution! I've dropped an MIT license in here.


Rich Daley, Fish Percolator