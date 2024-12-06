.PHONY: clean

clean:
	rm -rf figures
	rm -rf derived_data
  
Project.html: Project.Rmd Num\ Movies\ Released.png Distribution\ of\ Genres.png IMDbBudget.png IMDbOscarGG.png
	R -e "rmarkdown::render('Project.Rmd', output_format='html_document')"
  

final_data.csv: movies_data.csv clean_final_data.R
	Rscript clean_final_data.R
	
Distribution\ of\ Genres.png: final_data.csv GenreDistrib.R
	Rscript GenreDistrib.R
	
Num\ Movies\ Released.png: final_data.csv MoviesReleased.R
	Rscript MoviesReleased.R

IMDbBudget.png: final_data.csv IMDbBudget.R
	Rscript IMDbBudget.R

IMDbOscarGG.png: final_data.csv IMDbOscarGG.R
	Rscript IMDbOscarGG.R
	
	