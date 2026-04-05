#import "template.typ": profile, resume, styled-table, github-repo

#show: resume.with()

= 이력서
#profile(
  photo: "photo.jpg",
  name: "박현",
  english-name: "Hyun Park",
  birth-year: 2000,
  position: "소프트웨어 개발",
  experiences: "신입",
  tel: "",
  website: "cv.hyun.re.kr",
  email: "HyunP.dev@gmail.com",
  address: "",
)

== 학력사항
#styled-table(
  ncols: 4,
  columns: (auto, 1fr, auto, auto),
  [*재학기간*],
  [*학교명 및 전공*],
  [*학점*],
  [*소재지*],
  
  [2020. 03 \~ 2024. 02],
  [한림대학교 소프트웨어학부],
  [3.88 / 4.5],
  [강원도 춘천시],
)

== 보유 기술
#styled-table(
  ncols: 2,
  columns: (auto, 1fr),
  [*분류*],
  [*기술*],
  
  [Languages],
  [Fortran, Python, R, C\#, Java, C/C++, JavaScript, OCaml],
  
  [Frameworks],
  [.NET Framework, Qt, Apache Tomcat],
  
  [Domains],
  [Digital Forensics, Machine Learning],
)

== 교육 및 연수
#styled-table(
  ncols: 3,
  columns: (auto, 1fr, auto),
  [*교육기간*],
  [*교육명*],
  [*기관*],
  
  [2023. 07. 23 \~ 2023. 08. 05],
  [Culture and Computer Sciences course],
  [University of York],
)

== 연구실 활동
#styled-table(
  ncols: 3,
  columns: (auto, 1fr, auto),
  [*활동기간*],
  [*소속*],
  [*분야*],
  
  [2021. 08 \~ 2023. 12],
  [한림대학교 임베디드 연구실],
  [신호 처리 및 안드로이드 앱 개발],
  
  [2023. 07 \~ 2023. 12],
  [한림대학교 디지털의료 미래연구소],
  [기계 학습 및 데이터 시각화],
)

#pagebreak()

== 학술 활동
#styled-table(
  ncols: 3,
  columns: (auto, 1fr, auto),
  [*저널*],
  [*논문명*],
  [*출간일*],
  
  [Diagnostics],
  [A Virtual Reality-Based Multimodal Approach to Diagnosing Panic Disorder and Agoraphobia Using Physiological Measures: A Machine Learning Study],
  [2025. 09. 03],
)

== 오픈소스 활동
#styled-table(
  ncols: 3,
  columns: (auto, 1fr, auto),
  [*분야*],
  [*저장소*],
  [*분류*],
  
  [OSINT],
  [#github-repo(addr: "HyunP-dev/flashlight")],
  [Python 라이브러리],
  
  [OSINT],
  [#github-repo(addr: "HyunP-dev/sanctions-list-transform")],
  [maltego transform],
  
  [디지털 포렌식],
  [#github-repo(addr: "HyunP-dev/qforensics")],
  [응용 프로그램],
  
  [디지털 포렌식],
  [#github-repo(addr: "HyunP-dev/ocaml-forensics")],
  [OCaml 라이브러리],
)