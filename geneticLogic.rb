def geneEvaluation(size, range)
    n = 0
    a = []
    while n < size 
        a[n] = Random.rand(range.to_f)
        n += 1
    end
    return a
end

def makePopulation(size, len, range) 
    n = 0
    population = [] 
    while n < size 
        population[n] = geneEvaluation(len, range)
        n += 1
    end
    return population
end

def crossoverChromosomes(population, size)
    temp = population[Random.rand(size)] 
    temp2 = population[Random.rand(size)]
    crossover = [temp[0] , temp[1] , temp2[temp2.size-2]  , temp2[temp2.size-1]]
    return crossover
end 

def mutatedGene(population)
    size = population.size 
    n = 0 
    newGene = []
    while n < size 
        newGene[n] = crossoverChromosomes(population, size)
        n += 1
    end 
    return newGene
end


def norFitness(mutatedGene)
    size = mutatedGene.size 
    n = 0
    perfectGene = [] 
    while n < size 
        if mutatedGene[n][0] > 0.9 && mutatedGene[n][1] < 0.1 && mutatedGene[n][2] < 0.1 && mutatedGene[n][3] < 0.1
            puts "#{mutatedGene[n]},  (member no. #{n}) is a perfect chromosome, it almost covers NOR."
            perfectGene[n] = mutatedGene[n]
        end
        n += 1
    end
    size = perfectGene.size 
    m = 0 
    while m < size 
        if perfectGene[m] == nil 
            perfectGene.delete(perfectGene[m]) 
        end 
        m += 1
    end
    return perfectGene
end

def nandFitness(mutatedGene)
    size = mutatedGene.size 
    n = 0
    perfectGene = [] 
    while n < size 
        if mutatedGene[n][0] > 0.9 && mutatedGene[n][1] > 0.9 && mutatedGene[n][2] > 0.9 && mutatedGene[n][3] < 0.1
            puts "#{mutatedGene[n]},  (member no. #{n}) is a perfect chromosome, it almost covers NAND."
            perfectGene[n] = mutatedGene[n]
        end
        n += 1
    end
    size = perfectGene.size 
    m = 0 
    while m < size 
        if perfectGene[m] == nil 
            perfectGene.delete(perfectGene[m]) 
        end 
        m += 1
    end
    return perfectGene
end