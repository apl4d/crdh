library(ggplot2)

#Change filename to access the correct dataframe

party_aff = read.csv("~/Desktop/subjects/figure3.csv")

#selecting relevant columns, and distinguishing which cartoons to highlight

fig <- ggplot(party_aff, aes(x=Year, y=Percentage, color=Party)) +
    scale_color_manual(values = c('#727271','#f40909','#0930f4')) + 
    geom_line() +
    geom_point() +
    labs(title="Depiction of Democrat, Republican, and Administration Characters in Herblock Cartoons",
         x="Year", y = "Median Brightness")
         
# save as PDF to make post-processing in Illustrator much easier.
         
ggsave("~/Desktop/subjects/figure3.pdf",fig,w=11,h=6,dpi=150)
