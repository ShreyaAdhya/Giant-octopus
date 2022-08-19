library(tidyverse)

data()
BOD

#ggplot(data = BOD,
 #      mapping = aes(x=Time, y=demand))+
  #geom_point(size=5)+
  #geom_line(colour = "red")


ggplot(BOD,aes(Time,demand))+
  geom_point(size=3,colour="blue")+
  geom_line(colour="green")


data()
#co2
view(CO2)

CO2 %>% #pipe operator- takes anything from left of the op and pipes it into the right a 
  ggplot(aes(conc,uptake,
             #colour = Plant
             colour = Treatment ))+     # colour will be function of which treatment grp it was
  geom_point(alpha = 0.5)+
  geom_smooth(method = lm, se=F)+
  facet_wrap(~Type)+
  labs(title="Conc of CO2")+
  theme_bw()
  
  
  

View(mpg)

mpg %>%
  ggplot(aes(displ, cty))+
  geom_point(aes(colour=drv,
                 size=trans),
             alpha=0.5)+
  geom_smooth(method=lm)+
  facet_wrap(~year, nrow=1)

            
  
  
  
 

