#let resume(body) = {
  set page("a4")
  set page(margin: 2cm)
  set text(font: "NanumMyeongjo", size: 9pt)
  
  show heading.where(level: 1): set align(center)
  show heading.where(level: 1): set text(size: 20pt)
  show heading.where(level: 1): set block(below: 28pt)
  
  show heading.where(level: 2): it => {
    block(above: 20pt)
    [■ #h(0.5em) #it.body]
  }
  
  set table(inset: 9pt)
  set grid(gutter: 8pt)
  
  body
}

#let stroke_style = stroke(dash: "dashed")

#let profile(
  name: "홍길동",
  english-name: "Hong Gildong",
  birth-year: 2000,
  position: "소프트웨어 개발",
  experiences: "신입",
  tel: "010-1234-5678",
  website: "example.com",
  email: "gildong@example.com",
  address: "대한민국 서울특별시 중구 세종대로 110",
  photo: "example.jpg",
) = {
  grid(
    columns: (auto, auto),
    rows: 4.5cm,
    
    align(horizon, image(photo, height: 124pt, fit: "cover")),
    align(horizon, table(
      stroke: (x, y) => (
        top: stroke_style,
        bottom: stroke_style,
        left: if x == 0 { none } else { stroke_style },
        right: if x == 5 { none } else { stroke_style },
      ),
      columns: (auto, 1fr, auto, 1fr, auto, auto),
      
      fill: (rgb("#f7f7f7"), rgb("#ffffff")),
      table.hline(stroke: stroke(dash: "solid", thickness: 1.5pt)),
      [*이름*], [#{ name }], [*영문 이름*], [#{ english-name }], [*출생년도*], [#{ birth-year }년생],
      [*지원분야*], table.cell(colspan: 3)[#{ position }], [*경력*], [#{ experiences }],
      [*휴대폰*], [#{ tel }], [*홈페이지*],
      table.cell(colspan: 3, stroke: (right: none))[#{ website }],
      [*E-mail*], table.cell(colspan: 5, stroke: (right: none))[#{ email }],
      [*주소*], table.cell(colspan: 5, stroke: (right: none))[#{ address }],
      table.hline(stroke: stroke(dash: "solid", thickness: 1.5pt)),
    )),
  )
}

#let styled-table(
  ncols: 3,
  columns: (auto, 1fr, auto),
  ..rows,
) = {
  table(
    columns: columns,
    stroke: (x, y) => (
      top: stroke_style,
      bottom: stroke_style,
      left: if x == 0 { none } else { stroke_style },
      right: if x == ncols - 1 { none } else { stroke_style },
    ),
    fill: (x, y) => if y == 0 { rgb("#f7f7f7") } else { rgb("#ffffff") },
    align: center + horizon,
    table.hline(stroke: stroke(dash: "solid", thickness: 1.5pt)),
    ..rows,
    table.hline(stroke: stroke(dash: "solid", thickness: 1.5pt)),
  )
}
