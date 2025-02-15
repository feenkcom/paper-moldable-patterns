# README

This is the repo for *Moldable Development Patterns*, presented at [EuroPLoP 2024](https://www.europlop.net).

This repo contains both the LaTeX sources for the paper and the GT materials (Lepiter database, source package) to  support the paper.

Preprint available on [arXiv (PDF)](https://arxiv.org/pdf/2409.18811)

ArXiv DOI: [10.48550/arXiv.2409.18811](https://doi.org/10.48550/arXiv.2409.18811)

ACM DOI: [10.1145/3698322.3698327](https://doi.org/10.1145/3698322.3698327) (To appear)

Online GT Book pages: [static HTML](https://book.gtoolkit.com/moldable-development-patterns-vuflnrgp5r5o4m1szatoo4e2)

## Load script
```
Metacello new
	repository: 'github://feenkcom/paper-moldable-patterns:main/src';
	baseline: 'PaperMoldablePatterns';
	load.
#BaselineOfPaperMoldablePatterns asClass loadLepiter.
```

# Title

Moldable Development Patterns

## Authors

Oscar Nierstrasz, Tudor Gîrba

## Abstract

Moldable development supports decision-making by making software systems explainable. This is done by making it cheap to add numerous custom tools to your software, turning it into a live, explorable domain model. Based on several years of experience of applying moldable development to both open-source and industrial systems, we have identified several mutually supporting patterns to explain how moldable development works in practice. This paper targets (i) readers curious to learn about moldable development, (ii) current users of the Glamorous Toolkit moldable IDE wanting to learn best practices, and (iii) developers interested in applying moldable development using other platforms and technology.

Keywords:
Software development, software modeling and analysis, software testing, explainable systems.

## BibTeX citation

```
@inproceedings{Nier24a,
	Annote = {internationalworkshop},
	Author = {Oscar Nierstrasz and Tudor G\^irba},
	Booktitle = {Proceedings of EuroPLoP 2024},
	Keywords = {feenk-pub Girba},
	Title = {Moldable Development Patterns},
		Abstract= {Moldable development supports decision-making by
		making software systems explainable. This is done by making it
		cheap to add numerous custom tools to your software, turning it
		into a live, explorable domain model. Based on several years of
		experience of applying moldable development to both open-source and
		industrial systems, we have identified several mutually supporting
		patterns to explain how moldable development works in practice.
		This paper targets (i) readers curious to learn about moldable
		development, (ii) current users of the \emph{Glamorous Toolkit}
		moldable IDE wanting to learn best practices, and (iii) developers
		interested in applying moldable development using other platforms
		and technology.},
	eprint = {2409.18811},
	archivePrefix = {arXiv},
	primaryClass = {cs.SE},
	doi = {10.1145/3698322.3698327},
	url = {https://arxiv.org/pdf/2409.18811},
	arxiv-doi = {10.48550/arXiv.2409.18811},
	acm-doi = {10.1145/3698322.3698327},
	scg-url = {http://scg.unibe.ch/archive/papers/Nier24a-MoldableDevelopmentPatterns.pdf},
	Year = {2024}
}
```

# ArXiV Paper download

[ArXiV preprint](https://arxiv.org/abs/2409.18811)
