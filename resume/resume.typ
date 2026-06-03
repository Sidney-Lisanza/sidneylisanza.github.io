#set page(
  paper: "us-letter",
  margin: (left: 0.44in, right: 0.44in, top: 0.36in, bottom: 0.34in),
)

#set par(justify: false, leading: 0.46em)
#set text(font: "Arial", size: 7.8pt)

#set heading(numbering: none)

#let section(title) = [
  #v(0.42em)
  #text(weight: "bold", size: 9.35pt)[#upper(title)]
  #line(length: 100%, stroke: 0.5pt + rgb("#9a9a9a"))
  #v(0.08em)
]

#let role(title, org, location, dates: "") = [
  #text(weight: "bold", size: 8pt)[#title]
  #text(" | ")
  #text(weight: "bold", size: 8pt)[#org]
  #text(" | " + location)
  #if dates != "" [
    #text(" | " + dates)
  ]
  #linebreak()
]

#let compact-bullets(items) = {
  for item in items [
    #grid(
      columns: (0.55em, 1fr),
      column-gutter: 0.08em,
      row-gutter: 0em,
      align(left)[•],
      [#item],
    )
  ]
}

#align(center)[
  #text(size: 14.8pt, weight: "bold")[Sidney Lyayuga Lisanza]
]

#v(0.05em)

#align(center)[
  #text(size: 7.25pt)[New York, NY | #link("mailto:sidneylisanza@gmail.com")[#text("sidneylisanza@gmail.com")] | #link("https://www.linkedin.com/in/sidney-lisanza-00b012178/")[LinkedIn] | #link("https://scholar.google.com/citations?user=7auBhooAAAAJ&hl=en")[Google Scholar]]
]

#v(0.14em)

#text(size: 7.55pt)[Computational biochemist developing deep learning methods for protein design and AI-driven drug discovery. PhD-trained in biochemistry with experience spanning generative models, structure-conditioned design, and wet lab work.]

#section("Experience")

#role(
  "Machine Learning Scientist | Training Generative and Reasoning Models for Protein Design",
  "Prescient Design (Genentech)",
  "New York, NY",
  dates: "2024-Present",
)
#compact-bullets((
  [Develop generative and reasoning models for protein design that accelerate therapeutic discovery across small molecules, peptides, and large molecules.],
  [Partner with experimental collaborators to translate multi-objective therapeutic constraints into model requirements, followed by iterative design-build-test cycles with machine learning and wet lab teams to meet experimental endpoints.],
))

#v(0.04em)

#role(
  "Research Assistant",
  "Baker Lab, Institute for Protein Design, University of Washington",
  "Seattle, WA",
)
#compact-bullets((
  [Developed generative machine learning methods for de novo protein design, with a focus on jointly modeling protein sequence and structure.],
  [Led work on RoseTTAFold sequence-space diffusion methods for controllable protein generation, culminating in ProteinGenerator and subsequent publication in Nature Biotechnology.],
  [Co-led development of early deep learning approaches for scaffolding functional sites in proteins, published in Science.],
))

#v(0.04em)

#role(
  "Undergraduate Researcher",
  "Baker Lab (UW) and Hahn Lab (UNC)",
  "Seattle, WA / Chapel Hill, NC",
)
#compact-bullets((
  [Baker: Worked on computational protein design, including co-assembling multi-component protein crystals and early structure-guided design projects.],
  [Hahn: Studied GEF-H1 localization and activation dynamics using FRET-based biosensors and photoactivatable GEF inhibitors.],
))

#section("Education")

#role("PhD in Biochemistry", "University of Washington", "Seattle, WA")
#compact-bullets((
  [Advisor: David Baker],
  [Thesis: Conditional Generation of Protein Sequence and Structure.],
))

#v(0.03em)

#role("BA with Honors in Chemistry and Mathematics", "University of North Carolina at Chapel Hill", "Chapel Hill, NC")
#compact-bullets((
  [Minor in Computer Science.],
))

#v(0.03em)

#text(weight: "bold")[North Carolina School of Science and Mathematics]
#linebreak()
#compact-bullets((
  [Student Ambassador, Student Government, National Society of Black Engineers, NC Science and Engineering Fair, NC Student Academy of Science],
))

#section("Selected Publications")

#text(size: 7.3pt)[
  #compact-bullets((
    [Lab-in-the-loop therapeutic antibody design with deep learning. bioRxiv, 2025.],
    [Multistate and functional protein design using RoseTTAFold sequence space diffusion. Nature Biotechnology, 2025.],
    [Protein design using structure-prediction networks: AlphaFold and RoseTTAFold as protein structure foundation models. Cold Spring Harbor Perspectives in Biology, 2024.],
    [Joint generation of protein sequence and structure with RoseTTAFold sequence space diffusion. bioRxiv, 2023.],
    [Scaffolding protein functional sites using deep learning. Science, 2022.],
    [Deep learning methods for designing proteins scaffolding functional sites. bioRxiv, 2021.],
    [Design of proteins presenting discontinuous functional sites using deep learning. bioRxiv, 2020.],
    [Spatiotemporal dynamics of GEF-H1 activation controlled by microtubule- and Src-mediated pathways. Journal of Cell Biology, 2019.],
  ))
]

#section("Teaching and Leadership")

#text(size: 7.45pt)[
  #compact-bullets((
    [Co-organizer, GEM workshop at ICLR (2024, 2025, 2026): Workshop to foster collaboration between machine learning experts and experimental scientists.],
    [Teaching Assistant, UW BIOC 426 and UW BIOC 441: taught introductory biochemistry and core experimental techniques.],
    [Teaching Assistant, Rosetta REU Code School: taught undergraduate researchers how to design proteins with Rosetta.],
  ))
]

#section("Technical Skills")

#text(size: 7.45pt)[
  #compact-bullets((
    [Machine learning and programming: Python, PyTorch, Lightning, Prime-rl, Bash, C++, Java.],
    [Computational biology: protein design, generative modeling, sequence-structure modeling, scientific computing.],
    [Experimental biology: cloning, protein purification, protein characterization, and biochemical assay support.],
  ))
]
