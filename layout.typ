#let writeup(
  title: "",
  author: "",
  course: "",
  university: "Aarhus University",
  semester: "",
  body
) = {
  set heading(outlined: true, numbering: "1.1")

  show raw.where(block: false): it => {
      set text(size: 0.9em)
      [
          #h(2pt)
          #box(it, fill: luma(245), radius: 2pt, outset: 2pt)
          #h(2pt)
      ]
  }

  show raw.where(block: false): box.with(inset: 0pt)

  set text(
      size: 12pt,
      lang: "en",
  )

  set par(justify: true, spacing: 1.45em)

  set page(
    header: [
      #grid(
        columns: (1fr, auto, 1fr),
        align: (left, center, right),
        [#author],
        [#title],
        [#datetime.today().display("[day]. [month repr:long] [year]")]
      )
      #v(-0.5em)
      #line(length: 100%, stroke: 0.5pt)
    ],

    footer: [
      #line(length: 100%, stroke: 0.5pt)
      #set text(size: 11pt)
      #grid(
        columns: (1fr, auto, 1fr),
        align: (left, center, right),
        [#university#if course != none and course != "" [, #course]],
        [Page #context(counter(page).display("1 / 1", both: true))],
        [#semester]
      )
    ]
  )

  show ref: it => {
    set text(fill: blue.darken(20%))
    it
  }

  show link: it => {
    set text(fill: blue.darken(20%))
    it
  }

  body
}

#let appendix(body) = {
  set heading(numbering: "A.1", supplement: "Appendix", outlined: false)
  counter(heading).update(0)
  body
}