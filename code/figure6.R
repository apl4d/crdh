library(ggplot2)

#Change filename to access the correct dataframe

mb = read.csv("~/Desktop/subjects/figure6.csv")

#selecting relevant columns, and distinguishing which cartoons to highlight

p <- ggplot(mb, aes(x=Year, y=brightness_median, color=Subject)) +
    scale_color_manual(values = c('#f40909','#999999')) + 
    geom_point(alpha=0.3) +
    geom_smooth(aes(fill=layer)) +
    labs(title="Median brightness of civil rights-themed cartoons depicting southerners",
         x="Year", y = "Median Brightness")
         
# save as PDF to make post-processing in Illustrator much easier.
         
ggsave("~/Desktop/subjects/figure6.pdf",p,w=8,h=10,dpi=150)
