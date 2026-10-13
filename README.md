# Typst Writeup Template
Usage:

```typst
#import "layout.typ": *

#show: writeup.with(title: "Assignment 1", author: "Firstname Lastname", course: "Software Security", semester: "Winter Semester 2026/27", university: "Aarhus University")

#include "exercises/exercise-01.typ"
#include "exercises/exercise-02.typ"
#include "exercises/exercise-03.typ"
#include "exercises/exercise-04.typ"
```

All arguments are optional, ommitting one will result in the corresponding header / footer cell being empty.

Adding a `course` will result in it being displayed behind the university name in the footer.