# Travelling Salesman Problem Using Genetic Algorithm

## Overview

The Travelling Salesman Problem (TSP) is a classic example of an NP-complete problem, categorized under combinatorial optimization problems. The complexity of finding an exact solution grows exponentially with the number of cities, making it impractical to solve using exact methods within a reasonable timeframe. This project employs a Genetic Algorithm (GA), an evolutionary technique inspired by the principle of survival of the fittest, to find near-optimal solutions for the TSP. While GAs do not guarantee the optimal solution, they often provide good approximations within a reasonable amount of time.

Studies have demonstrated that the proposed GA can find shorter routes in real-time compared to traditional path selection models. The effectiveness of the GA is influenced by selection criteria, crossover, and mutation operators. This project details these operators and their impact on the algorithm's efficiency. The optimization results are presented graphically using MATLAB for various scenarios, allowing for a comparison of GA efficiency with different parameters.

## Files

- `TSP_GeneticAlgorithm.m`: The main script that runs the genetic algorithm for solving the TSP.
- `InitializePopulation.m`: Initializes the population of potential solutions.
- `EvaluatePopulation.m`: Evaluates the fitness of each individual in the population.
- `Selection.m`: Selects individuals from the current population to breed the next generation.
- `Crossover.m`: Performs crossover operations to generate new offspring.
- `Mutate.m`: Applies mutation operations to introduce variability in the population.

## Genetic Algorithm Components

### Initialization

The population is initialized with a set of random possible solutions. This initial population serves as the starting point for the GA.

### Evaluation

Each individual (route) in the population is evaluated based on a fitness function, which typically measures the total distance of the route. The goal is to minimize this distance.

### Selection

Selection operators choose individuals from the current population based on their fitness. Individuals with better fitness have a higher chance of being selected for reproduction. Various selection strategies can be used, such as roulette wheel selection or tournament selection.

### Crossover

Crossover operators combine pairs of individuals to produce offspring for the next generation. This process mimics biological reproduction and allows for the exchange of genetic information between individuals. Different crossover methods can be applied, such as ordered crossover or partially matched crossover.

### Mutation

Mutation operators introduce random changes to individuals, ensuring genetic diversity within the population. This helps the algorithm avoid local minima and explore a broader search space. Mutation rates and methods can significantly affect the algorithm's performance.

## Usage

1. **Initialization**: Run `InitializePopulation.m` to create the initial population.
2. **Evaluation**: Use `EvaluatePopulation.m` to assess the fitness of each individual in the population.
3. **Selection**: Apply `Selection.m` to select individuals for the next generation.
4. **Crossover**: Perform crossover operations using `Crossover.m` to produce offspring.
5. **Mutation**: Introduce mutations using `Mutate.m` to maintain genetic diversity.
6. **Main Script**: Execute `TSP_GeneticAlgorithm.m` to run the entire genetic algorithm and solve the TSP.

## MATLAB Implementation

The implementation is done in MATLAB, leveraging its powerful computational and visualization capabilities. The optimization results are presented graphically for different scenarios, allowing for an in-depth analysis of the GA's efficiency and performance.

## Conclusion

The Genetic Algorithm provides an effective approach to solving the Travelling Salesman Problem, offering good approximations in a reasonable timeframe. By tuning the selection criteria, crossover, and mutation operators, the GA can be optimized for better performance. This project demonstrates the practical application of GAs in combinatorial optimization and highlights the impact of different GA parameters on solution quality.

## Collaborators

- [![Luciano Silva](https://img.shields.io/github/followers/Lucsaj?label=Luciano%20Silva&style=style=for-the-badge)](https://github.com/Lucsaj)
- [![Matheus Monteiro](https://img.shields.io/github/followers/Matheus-Monteiro2001?label=Matheus%20Monteiro&style=style=for-the-badge)](https://github.com/Matheus-Monteiro2001)
- [![Rodrigo Bitu](https://img.shields.io/github/followers/rodBitu?label=Rodrigo%20Bitu&style=style=for-the-badge)](https://github.com/rodbitu)
