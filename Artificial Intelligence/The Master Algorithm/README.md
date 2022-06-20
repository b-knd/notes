# The Master Algorithm by Pedro Domingos
**Central hypothesis of the book**

_All knowledge - past, present, future - can be derived from data by a single, universal learning algorithm_

![](https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1435790827l/24612233._SY475_.jpg)

1. [The Machine-Learning Revolution](#chapter-1-the-machine-learning-revolution)

2. [The Master Algorithm](#chapter-2-the-master-algorithm)

3. [Hume's Problem of Induction](#chapter-3-humes-problem-of-induction)

4. [How Does Your Brain Learn?](#chapter-4-how-does-your-brain-learn)

5. [Evolution: Nature's Learning Algorithm](#chapter-5-evolution-natures-learning-algorithm)

6. [In the Church of the Reverend Bayes](#chapter-6-in-the-church-of-the-reverend-bayes)

7. [You Are What You Resemble](#chapter-7-you-are-what-you-resemble)

8. [Learning Without a Teacher](#chapter-8-learning-without-a-teacher)

9. [The Pieces of the Puzzle Fall into Place](#chapter-9-the-pieces-of-the-puzzle-fall-into-place)

10. [This Is the World on Machine Learning](#chapter-10-this-is-the-world-on-machine-learning)

# Chapter 1 The Machine-Learning Revolution
> A programmer--someone who creates algorithms and codes them up--is a minor god, creating universes at will. 


**What is Algorithm?**
* Sequence of instructions that tells computer what to do
* Algorithm turn switches (transistors) on and off

  > _What the transistors are doing in response to other transistors are logical reasoning - Claude Shannon (father of information theory)_
* All algorithms, regardless of the complexity, can be reduced to just these three simple operations: AND, OR, NOT

**The Complexity Devil**
* **Space complexity**: number of bits of information an algorithm needs to store in computer's memory
    * An algorithm should not use more memory than a computer can provide
* **Time complexity**: how long an algorithm takes to run
    * An algorithm should not run longer than we can afford to wait
* **Human complexity**: how complicated or intricated an algorithm is for human brain to comprehend
    * Leads to errors that are hard to be found or fixed
    * Algorithm might not produce desired result
    * Hard to be reused or interact well with other algorithms

## Enter the Learner

**What is Machine Learning?**
It is the inverse of algorithm.
* Algorithm takes data as input and produces result as output
* Machine learning takes data and result as input and produces an algorithm as output
* **Learning algorithm** are algorithms that make other algorithms

    > Learning algorithms are seeds, data is the soil, learned programs are the grown plants. The machine-learning experts is like a farmer, sowing seeds, fertilizing the soil and keep an eye on the health of crop but otherwise staying out of the way.

## Why Business Embrace Machine Learning
> With Google's annual revenue of $50 billion, every 1 percent improvement in click prediction potentially means another half billion dollars in the bank, every year, for the company. 


# Chapter 2 The Master Algorithm
> Machine learning is simply the same algorithms doing all those different things

**Learning Algorithms**
* **Naive Bayes**
    * An algorithm that can be expressed as a single short equation
    * Given patients' records, able to diagnose condition within second and also used for filtering spams

* **Nearest-Neighbor**
    * Used for handwriting recognition, controlling robot hands, recommending books or movies
* **Decision Tree Learner**
    * Decide if credit-card applications is aceptable, find splice junctions in DNA, choosing next move in game of chess

> If you give learner enough of the appropiate data, it can approximate any functions arbitrarily closely, which is math-speak for learning anything. The catch is that "enough data" could be infinite. 

## Proof of Existence of The Master Algorithm
* **The argument from Neuroscience**
    * Experiment done by neuroscientists from MIT, rewiring brain of a ferret, rerouting connections from eyes to auditory cortex (sound processing) and from ears to visual cortex (visual processing). They realised that the auditory cortex learned to see and visual cortex learned to hear.
    * One popular route towards inventing the Master Algorithm is thus to reverse engineer the brain

* **The argument from Evolution**

    > Evolution is an algorithm. Its input is the experience and fate of all living creatures that ever existed and it has been running for over three billion years on the most powerful computer on Earth: the Earth itself. 
    * Natural selection is familiar to computer scientists as iterative search - _We try many candidate solutions, selecting and modifying the best ones and repeat the steps as many times as necessary_
    * Evolution provides us the second route to the Master Algorithm

* **The argument from Physics**
    * Same equations applied to different quantities describe phenomena in completely different fields. All equations are simple and involve same few derivatives of quantities with respect to space and time - instances of a master equation. All the Master Algorithm needs is to find how how to instantiate those equations for different data sets.

* **The argument from Statistics**
    * Bayes' theorem is a machine that turns data into knowledge. If Bayesian statisticians are right, either Bayes' theorem is the Master Algorithm or the it's the engine that drives it. 

* **The argument from Computer Science**
    * **P and NP classes**: A problem is in P if we can solve it efficiently and NP if we can efficiently checks its solution. P = NP is whether every efficiently checkable problem is also efficiently solvable. 
    * Artificial intelligence consists of finding heuristic solution to NP-complete problems, usually by reducing them to satisfiability. A learner than can learn to solve satisfiability may be the Master Algorithm.

## The Five Tribes of Machine Learning
> Each five tribes' solution is brilliant, but the true Master Algorithm must solve them all
**Symbolists**
> All intelligence can be reduced to the manipulation of symbols

* Master algorithm: inverse deduction (figuring out missing knowledges and make a deduction go through, make it as general as possible)

**Connectionists**
> Learning is what brain does so what we need is the reverse engineering of the brain

* Master algorithm: backpropagation (changes connections in layer after layer of neurons to get closer to the desired output)

**Evolutionaries**
> Mother of all learning is natural selection

* Master algorithm: genetic programming (mating and evolving computer programs in the same way that nature mates and evolves organisms)

**Bayesians**
> All learned knowledge is uncertain and learning is a form of uncertain inference

* Master algorithm: Bayes' theorem (incorporating new evidence into our beliefs)

**Analogizers**
> Key to learning is recognizing similarities between situations

* Master algorithm: support vector machine (figuring out which experiences to remember and how to combine them to make new predictions)

# Chapter 3 Hume's Problem of Induction
> Rationalists belives that senses deceive and that logical reasoning is the only sure path to knowledge. Empiricists belive that all reasoning is falluble and that knowledge must come from observation and experimentation.
> Our goal is to figure out the simplest program we can write such that it will continue to write itself by reading data, without limit, until it knows everything there is to know.

## Between Blindness and Hallucination
> Our beliefs are based on our experience, which gives us a very incomplete picture of the world, and it's easy to jump to false conclusions.

* **Overfitting of data**: when a learner finds a pattern in data that is not actually true in the real world
* Overfitting happends when there is to many hyoitheses and not enough data to tell them apart

## Accuracy You Can Belive In
> You don't believe anything a learner tell you until you've verified it on the data that the learner didn't see.

* Data is being divided randomly into training set which is given tot he learner and a test set, which is being hidden from the learner and will then being used to verify the accuracy of the result
* If a learner fails the test-set accuracy test, then we need to diagnose the problem to see if it's blindness (bias) or hallucination (variance).
* The learner is probably biased if it keeps on making the same mistakes and it needs to be more flexible. The problem is variance if there's no pattern to the mistakes and we might need to try a less flexible learner or to get more data.

# Chapter 4 How Does Your Brain Learn?
## Symbolist vs Connectionist
* In symbolist system, concept is being stored in precise location in memory; in connectionist system, concept is stored a little bit everywhere
* Symbolist learning is sequential (figure out one step at a time), connectionist learning is parallel (simultaneous learning)

## The rise and fall of perceptron
**First Formal Model of Neuron (by Warren McCulloch and Walter Pitts)**
* Resemble logic gates, neuron switches on when number of active inputs passes some threshold
* Threshold = 1 resemble an OR gate, whereas any other threshold resemble an AND gate, there is also neuron that prevent other from swirching on, acting like inhibitory synapses, thus resembling a NOT gate
* Conclusion: this model cannot learn (need variable weights to connection between neurons)

**Perceptrons (by Frank Rosenblatt)**
> Errors drives the learnind
* Weight implemented using variable resistors, learning carried out by electric motors that turned knobs on resistors
* By varying weights and thresholds, we can change function that perceptron computes --a general-purpose learning algorithm
* In the learning process, for example to recognize your grandmother, if perceptron fails to fire at correct picture, weights of the inputs need to be increased (weight of correct features, eg. brown eyes). If it fires when it shouldn't, weight of active inputs are being decreased. Once the perceptron fires upon seeing grandmother's pictures all the time, learning is complete.
* Fail to be a model for Master Algorithm, claimed Marvin Minsky, revealing failure of perceptrons to learn XOR function

## Physicist makes brain out of glass
* John Hopfield (physicist) noticed analogy between brain and spin glasses (magnetic, glass-like materieals)
* Unrealistic model for some reasons:
    * Electrons' spin interactions are symmetric but connection between neurons are not
    * Real neurons are statistical as they do not turn on and off by inputs, just more likely but not certain.
* David Ackley, Geoff Hinton and Trry Sejnowski replaced deterministic neurons in Hopfield's networds with probabilistic ones with probability of finding network in a particular state as a Boltzmann distribution
* This is known as Boltzmann machine, it learns by being alternately awake and asleep, then comparing statistics of states during 'dream' and yesterday's activities to change connection weights to match each other.

## Climbing Mountains in Hyperspace
**Perceptron Algorithm vs Backpropagation Algorithm**
* Perception algorithm's signal is all or none (either right or wrong), in backpropagation, neuron adjusts weight accordingly based on returning signal and input after comparing output with desired output, gradually converging to value that allow it to discriminate between what is right and what is wrong
**Backpropagation**
* Backprop (find the steepest slope you can find): gradient ascent and gradient descent
* Problem: local minimum problem (In situation to find lowest point, we might arrive at a local minimum instead of a global minimum using backprop)
**Hyperspace: The Double-edged Sword**
* The higher the dimension, more room it has for highly convoluted surfaces and local optima
* But to be stuck in local optimum, it has to be stuck in every dimension which is unlikely to be

## The Perceptron's Revenge
* Trained to read aloud by Terry Sejnowski and Charles Rosenberg
* Predicting stock market (ability to detect small nonlinearities in noisy data)
* Learned to drive a car (by detecting road in video images and turning steering wheel)

## Deeper into the Brain
> We need higher-level comcepts to make sense of the morass of low-level details, weeding out the ones that are specific to wetware or just quirks of evolution. We don't build airplanes by reverse engineering feathers, and airplanes don't flap their wings. Rather, airplane designs are based on the principles of aerodynamics, which all flying objects must obey. We still do not understand those analogous principles of thought.
* Backprop broke down when more and more layers being added

# Chapter 5 Evolution: Nature's Learning Algorithm
**Darwin's Algorithm**
* The key input to a genetic algorithm, is a fitness function (assign programs numeric score reflecting how well a program fits the purpose)
* The real power of genetic algorithms lay in 'sex' by mimicking the process of reproduction where mating between fittest individuals occurs, process repeat and selection continues until a desired fitness is reached or time runs out.
* As oppose to real natural selection, the algorithm is 'immortal' in some sense, where a highly fit individual can reproduce with other generations besides its own
* Graph of fitness against time looks like an uneven staircase with sudden improvements followed by a flat period that increases over time

## The Exploration-Exploitation Dilemma
**Genetic Algorithms vs Multilayer Perceptrons**
* **Backprop** only entertains one hypothesis at a time, the hypothesis changes gradually until it settles into a local optimum. **Genetic algorithms** consider entire population of hypotheses, and with good crossover, can take a leap from one generation to next.
* **Backprop** proceeds deterministically after setting a random initial weigth value. **Genetic algorithm** takes random choices (crossing over).
* **Backprop** leans weights for predefined network architecture. **Genetic algorithm** make no a priori assumptions about structures to learn, other than the general form.

**Exploration-Exploitation Dilemma**
> If you've found something that works, should you just keep doing it? Or is it better to try new things, knowing it could be a waste of time but also might lead to a better solution?

## Nurturing nature
* Evolutionaries focus on learning structure; connectionists prefer to take simple, hand-coded structure with lots of connections and let weight learning do the work
* The Master ALgorithm is neither genetic programming not backprop, but has to include the key elements of both: structure learning and weight learning
* In reality, nature does not come before nurture, but alternate, with each round of "nurture" learning setting the stage for next round of "nature" learning

## He who learns fastest win
* **Nature** for a computer is the program it runs, **nurture** is the data it gets
* Symbolists and Bayesians claimed that figuring out how we should learn can help us to understand how we do learn

# Chapter 6 In the Church of the Reverend Bayes
## Chapter 7 You Are What You Resemble
## Chapter 8 Learning Without a Teacher
## Chapter 9 The Pieces of the Puzzle Fall into Place
## Chapter 10 This Is the World on Machine Learning
