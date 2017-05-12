# geneticLogic 

This is my first AI project, written in ruby. 

## Functions 

1. ```makePopulation``` : makes the initial population. For example, if you want to use fitness function for NOR (or other two input logic functions), you need to make an initial population like this :

```ruby 
p = makePopulation(10000, 1)
``` 

2. ```mutatedGen``` : breaks chromosomes in half and then, mix them. Makes new chromosomes. 

3. ```norFitness``` (and ```nandFitness```) : cheks which chromosomes produced by mutatedGen function are perfect chromosomes and cover the logic we want. 

