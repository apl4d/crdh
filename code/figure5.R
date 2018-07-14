library(ggplot2)

#Change filename to access the correct dataframe

party_av = read.csv("~/Desktop/subjects/figure5.csv")

#selecting relevant columns, and distinguishing which cartoons to highlight

fig5 <- ggplot(party_av, aes(x=Years, y=Percentage, color=Character)) +
    scale_color_manual(values = c('#727271','#f40909','#0930f4')) + 
    geom_line() +
    geom_point() +
    labs(title="Herblock's depiction of political affiliation, averaged by presidential administration",
         x="Year", y = "Median Brightness")
         
# save as PDF to make post-processing in Illustrator much easier.
         
ggsave("~/Desktop/subjects/figure5.pdf",fig5,w=11,h=6,dpi=150)
