# paper-moldable-patterns
Draft paper on moldable development patterns targeting [EuroPLoP 2024](https://www.europlop.net).

This repo contains both the LaTeX sources for the paper and the GT materials (Lepiter database, source package) to  support the paper.
## Load script
```
Metacello new
	repository: 'github://feenkcom/paper-moldable-patterns:main/src';
	baseline: 'PaperMoldablePatterns';
	load.
#BaselineOfPaperMoldablePatterns asClass loadLepiter
```


